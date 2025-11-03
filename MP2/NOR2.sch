v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
L 4 0 -80 0 -60 {}
L 4 0 0 0 20 {}
L 4 -100 20 0 20 {}
L 4 -100 20 0 20 {}
L 4 0 20 100 20 {}
L 4 -100 80 100 80 {}
L 4 0 80 0 110 {}
L 4 0 -150 0 -140 {}
L 4 0 0 50 0 {}
L 4 0 -140 0 -110 {}
L 4 0 -60 0 -30 {}
L 4 -100 50 -100 80 {}
L 4 100 50 100 80 {}
L 4 -140 -110 -30 -110 {}
L 4 -140 -30 -30 -30 {}
L 4 -130 -110 -130 50 {}
L 4 -140 -30 -140 180 {}
L 4 -140 180 140 180 {}
L 4 140 50 140 180 {}
L 4 130 50 140 50 {}
C {madvlsi/pmos4.sym} 0 -110 0 0 {name=M1
L=0.15
W=4
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
C {madvlsi/pmos4.sym} 0 -30 0 0 {name=M2
L=0.15
W=4
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
C {madvlsi/nmos4.sym} -100 50 0 0 {name=M3
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
C {madvlsi/nmos4.sym} 100 50 0 1 {name=M4
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
C {opin.sym} 50 0 0 0 {name=p5 lab=Y}
C {iopin.sym} 0 110 1 0 {name=p6 lab=VN}
C {iopin.sym} 0 -150 1 1 {name=p7 lab=VP}
C {ipin.sym} -140 -110 0 0 {name=p1 lab=A

}
C {ipin.sym} -140 -30 0 0 {name=p2 lab=B}
