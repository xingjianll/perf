#!/usr/bin/env python3
"""
Extract AGX (Apple GPU) machine code from MoltenVK pipelines on macOS,
then disassemble using Mesa's Python AGX disassembler.

Workflow:
  1. Locate Apple's per-user Metal shader cache
     ($(getconf DARWIN_USER_CACHE_DIR)com.apple.metal/<arch>_<gpu>/).
  2. Wipe functions.data + functions.list so the cache contains *only* our
     run's shader after the binary executes.
  3. Run the named binary (one of perf's compute kernels) to populate the
     cache with one Mach-O object per pipeline.
  4. Parse the Mach-O headers in functions.data and dump the __text section
     of each compiled kernel as raw bytes -- that's the AGX instruction stream.
  5. Disassemble each with Mesa's `test/disasm.py` (or applegpu's
     `disassemble.py` if MESA_ISA_DIR is unset).

Usage:
    python3 extract_agx.py <binary-name> [<binary-name>...]

Examples:
    python3 extract_agx.py add
    python3 extract_agx.py matmul add

The output (raw bytes + disassembly) lands alongside this script.
"""
import os, sys, subprocess, struct, glob, shutil

HERE = os.path.dirname(os.path.abspath(__file__))
REPO = os.path.dirname(HERE)

MESA_ISA = os.environ.get(
    "MESA_ISA_DIR",
    "/tmp/mesa-sparse/src/asahi/isa",
)
APPLEGPU = os.environ.get("APPLEGPU_DIR", "/tmp/applegpu")


def metal_cache_dir():
    base = subprocess.check_output(["getconf", "DARWIN_USER_CACHE_DIR"]).decode().strip()
    candidates = sorted(glob.glob(os.path.join(base, "com.apple.metal", "*")))
    if not candidates:
        sys.exit(f"no Metal cache subdir under {base}com.apple.metal/")
    # newest-modified is the one Metal is actively writing to
    return max(candidates, key=os.path.getmtime)


def parse_macho_text(data, off):
    """Return the __text section bytes from the Mach-O 64 at offset `off`."""
    magic, cputype, cpusubtype, filetype, ncmds, sizeofcmds, *_ = struct.unpack_from("<IIIIIIII", data, off)
    if magic != 0xfeedfacf:
        return None
    lc = off + 32
    for _ in range(ncmds):
        cmd, cmdsize = struct.unpack_from("<II", data, lc)
        if cmd == 0x19:  # SEGMENT_64
            nsects = struct.unpack_from("<I", data, lc + 64)[0]
            sect = lc + 72
            for _s in range(nsects):
                sname = data[sect:sect+16].rstrip(b'\0').decode('ascii', 'replace')
                _saddr, ssize, soffset = struct.unpack_from("<QQI", data, sect + 32)
                if sname == "__text":
                    return data[off + soffset : off + soffset + ssize]
                sect += 80
        lc += cmdsize
    return None


def find_machos(data):
    """Yield (offset, length) for each Mach-O 64 LE blob in the buffer."""
    p = 0
    while True:
        p = data.find(b'\xcf\xfa\xed\xfe', p)
        if p < 0: break
        # rough size: walk to next magic or EOF
        nxt = data.find(b'\xcf\xfa\xed\xfe', p + 4)
        end = nxt if nxt > 0 else len(data)
        yield p, end - p
        p = p + 4


def disasm_via_mesa(in_bin, out_asm):
    """Run Mesa's test/disasm.py without the stop-on-trap break."""
    script = """
import sys, binascii, os
sys.path.insert(0, %r)
os.chdir(%r)
from test.disasm import disasm
data = open(%r, 'rb').read()
i = 0
while i < len(data):
    lst = data[i:i+16]
    raw = sum([b << (8*j) for j, b in enumerate(lst)])
    length, asm = disasm(raw)
    length = abs(length) or 2
    print(f'{hex(i)[2:]:>4}: {binascii.hexlify(data[i:i+length]).decode():<20} {asm}')
    i += length
""" % (MESA_ISA, MESA_ISA, in_bin)
    with open(out_asm, "w") as f:
        subprocess.run([sys.executable, "-c", script], check=True, stdout=f)


def disasm_via_applegpu(in_bin, out_asm):
    if not os.path.isdir(APPLEGPU):
        return False
    script = """
import sys
sys.path.insert(0, %r)
import disassemble
disassemble.STOP_ON_STOP = False
data = open(%r, 'rb').read()
disassemble.disassemble(data)
""" % (APPLEGPU, in_bin)
    with open(out_asm, "w") as f:
        subprocess.run([sys.executable, "-c", script], check=True, stdout=f)
    return True


def extract_one(binary_name):
    cache = metal_cache_dir()
    data_f = os.path.join(cache, "functions.data")
    list_f = os.path.join(cache, "functions.list")
    print(f"[extract_agx] using cache: {cache}")

    # Wipe so the cache contains only our shader on the next run.
    for p in (data_f, list_f):
        if os.path.exists(p):
            os.remove(p)

    bin_path = os.path.join(REPO, "target", "release", binary_name)
    if not os.path.exists(bin_path):
        sys.exit(f"binary not found: {bin_path}  (cargo build --release --bin {binary_name})")
    print(f"[extract_agx] running {bin_path} ...")
    subprocess.run([bin_path], check=True, stdout=subprocess.DEVNULL)

    if not os.path.exists(data_f):
        sys.exit("no functions.data after run -- Metal cache wasn't written")
    data = open(data_f, "rb").read()

    blobs = list(find_machos(data))
    print(f"[extract_agx] found {len(blobs)} Mach-O blob(s) in functions.data")
    for i, (off, size) in enumerate(blobs):
        text = parse_macho_text(data, off)
        if text is None:
            print(f"  [{i}] no __text section at offset 0x{off:x}")
            continue
        suffix = "" if len(blobs) == 1 else f"_{i}"
        raw_out = os.path.join(HERE, f"{binary_name}_agx{suffix}.bin")
        open(raw_out, "wb").write(text)
        print(f"  [{i}] __text = {len(text)} bytes -> {raw_out}")

        mesa_out = os.path.join(HERE, f"{binary_name}_moltenvk{suffix}.mesa.s")
        disasm_via_mesa(raw_out, mesa_out)
        print(f"        Mesa disasm -> {mesa_out}")

        agx_out = os.path.join(HERE, f"{binary_name}_moltenvk{suffix}.agx.s")
        if disasm_via_applegpu(raw_out, agx_out):
            print(f"        applegpu     -> {agx_out}")


if __name__ == "__main__":
    if sys.platform != "darwin":
        sys.exit("this script is for macOS only (Mach-O cache parsing)")
    if len(sys.argv) < 2:
        sys.exit(__doc__.split('\n\n')[0])
    for name in sys.argv[1:]:
        extract_one(name)
