import os, sys, struct, tempfile
os.chdir('/Users/xingjianliu/.cache/perf-disasm/applegpu/hwtestbed')
sys.path.insert(0, '/Users/xingjianliu/.cache/perf-disasm/applegpu')
import hwtestbed
SENTINEL=0x4640E400
def ldimm(reg,val): return bytes([0x62,(reg<<2)|1])+int(val&0xFFFFFFFF).to_bytes(4,'little')
def tg_store(reg32,off,b5): R=reg32*2; return bytes([0x29,0x01|(R<<1),0x80,(off<<4)|0x02,0x14,b5])
def tg_load(reg32,off): R=reg32*2; return bytes([0x69,0x01|(R<<1),0x80,(off<<4)|0x02,0x14,0x81])
PRO=bytes.fromhex('72211004'+'0501000e01c8f200'+'0521040e01c8f200'+'3800')+b''.join(ldimm(i,0) for i in range(9,32))
EPI=bytes.fromhex('F27d1004'+'4501e00E03C8F200'+'4521e40E03C8F200'+'4541e80E03C8F200'+'4561eC0E03C8F200'+'4581e00E13C8F200'+'45a1e40E13C8F200'+'45c1e80E13C8F200'+'45e1eC0E13C8F200'+'8800')
tmp=tempfile.mkdtemp(); testbed=hwtestbed.HWTestBed(os.path.join(tmp,'compute.metallib'))
def run_variant(off, b5):
    code=PRO+ldimm(2,SENTINEL)+ldimm(3,0)
    for i in range(16): code+=tg_store(3,i,0x81)
    code+=tg_store(2,off,b5)+bytes.fromhex('6800')
    for i in range(16): code+=tg_load(9+i,i)
    code+=EPI
    n=32; bufs=(bytearray(),bytearray())
    for i in range(n):
        for j in range(4): bufs[0].extend(struct.pack('=I',0)); bufs[1].extend(struct.pack('=I',0))
    req=hwtestbed.HWTestBedRequest(shader=code,tg_size=(n,1,1),tgsm=0x100)
    req.set_buffer(0,bufs[0]); req.set_buffer(1,bufs[1]); req.request_result(0,len(bufs[0]))
    for i in range(1,8): req.request_result(i,4*4*n)
    res=testbed.run(req)
    def reg(rid,t=0):
        b=res.buffers[rid//4]; o=(t*4+rid%4)*4; return struct.unpack('=I',b[o:o+4])[0]
    tg=[reg(9+k) for k in range(16)]
    return [k for k in range(16) if tg[k]==SENTINEL]
print(f"{'offset':>6} | bit40   bit41   bit42")
for off in [0,1,2,5,7,15]:
    r={b5:run_variant(off,b5) for b5 in (0x81,0x82,0x84)}
    print(f"{off:>6} | {str(r[0x81]):7} {str(r[0x82]):7} {str(r[0x84]):7}")
