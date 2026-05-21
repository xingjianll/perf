import os, sys, struct, tempfile
os.chdir('/Users/xingjianliu/.cache/perf-disasm/applegpu/hwtestbed')
sys.path.insert(0, '/Users/xingjianliu/.cache/perf-disasm/applegpu')
import hwtestbed
def ldimm(reg, val): return bytes([0x62,(reg<<2)|1])+int(val&0xFFFFFFFF).to_bytes(4,'little')
def tg_store(reg32, off, b5): R=reg32*2; return bytes([0x29,0x01|(R<<1),0x80,(off<<4)|0x02,0x14,b5])
def tg_load(reg32, off): R=reg32*2; return bytes([0x69,0x01|(R<<1),0x80,(off<<4)|0x02,0x14,0x81])
PRO = bytes.fromhex('72211004'+'0501000e01c8f200'+'0521040e01c8f200'+'3800') + b''.join(ldimm(i,0) for i in range(9,32))
EPI = bytes.fromhex('F27d1004'+'4501e00E03C8F200'+'4521e40E03C8F200'+'4541e80E03C8F200'+'4561eC0E03C8F200'+'4581e00E13C8F200'+'45a1e40E13C8F200'+'45c1e80E13C8F200'+'45e1eC0E13C8F200'+'8800')
tmp=tempfile.mkdtemp(); testbed=hwtestbed.HWTestBed(os.path.join(tmp,'compute.metallib'))
def run(opcodes):
    code=PRO+opcodes+EPI; n=32; bufs=(bytearray(),bytearray())
    for i in range(n):
        for j in range(4): bufs[0].extend(struct.pack('=I',0)); bufs[1].extend(struct.pack('=I',0))
    req=hwtestbed.HWTestBedRequest(shader=code,tg_size=(n,1,1),tgsm=0x100)
    req.set_buffer(0,bufs[0]); req.set_buffer(1,bufs[1]); req.request_result(0,len(bufs[0]))
    for i in range(1,8): req.request_result(i,4*4*n)
    res=testbed.run(req)
    def reg(regid,thread=0):
        buf=res.buffers[regid//4]; o=(thread*4+regid%4)*4; return struct.unpack('=I',buf[o:o+4])[0]
    return reg
# Test A: store r2 to tg[0], load tg[0] -> r9
r = run(ldimm(2,0xABCD1234) + tg_store(2,0,0x81) + bytes.fromhex('6800') + tg_load(9,0))
print(f"store->tg[0], load->r9: r9=0x{r(9):08x}  (expect abcd1234), r2=0x{r(2):08x}")
# Test B: no barrier
r = run(ldimm(2,0xABCD1234) + tg_store(2,0,0x81) + tg_load(9,0))
print(f"no barrier:             r9=0x{r(9):08x}")
# Test C: store/load offset 3
r = run(ldimm(2,0x11112222) + tg_store(2,3,0x81) + bytes.fromhex('6800') + tg_load(9,3))
print(f"store/load tg[3]:       r9=0x{r(9):08x} (expect 11112222)")
