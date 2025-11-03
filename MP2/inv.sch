v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {



}
F {}
E {}
N 290 -130 290 -110 {lab=O}
N 260 -160 260 -80 {lab=A}
N 290 -120 320 -120 {lab=O}
N 230 -120 260 -120 {lab=A}
N 290 -50 290 -30 {lab=VN}
N 290 -80 290 -50 {lab=VN}
N 290 -210 290 -190 {lab=VP}
N 290 -190 290 -160 {lab=VP}
C {ipin.sym} 230 -120 0 0 {name=p1 lab=A}
C {opin.sym} 320 -120 0 0 {name=p2 lab=Y}
C {iopin.sym} 290 -30 1 0 {name=p3 lab=VN}
C {iopin.sym} 290 -210 3 0 {name=p4 lab=VP}
C {madvlsi/pmos4.sym} 290 -160 0 0 {name=M3
L=0.15
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {madvlsi/nmos4.sym} 290 -80 0 0 {name=M1
L=0.15
W=1
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
