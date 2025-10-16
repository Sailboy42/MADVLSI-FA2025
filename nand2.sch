v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {sym_pins="A B Y VDD VSS"



}
F {}
E {}
N -120 -40 -100 -40 {lab=A}
N -120 40 -100 40 {lab=B}
N -0 0 50 0 {lab=Y}
N 0 -0 0 90 {lab=Y}
N -70 70 -0 70 {lab=Y}
N 50 -20 50 -0 {lab=Y}
N 50 -0 50 20 {lab=Y}
N -70 -10 -70 10 {lab=#net1}
N -110 -50 20 -50 {lab=A}
N -110 -50 -110 -40 {lab=A}
N -110 50 20 50 {lab=B}
N -110 40 -110 50 {lab=B}
N -170 -70 -170 0 {lab=VN}
N -170 -70 -70 -70 {lab=VN}
N -70 -70 -70 -40 {lab=VN}
N -70 40 -30 40 {lab=VN}
N -30 -70 -30 40 {lab=VN}
N -70 -70 -30 -70 {lab=VN}
N 50 -80 50 -50 {lab=VDD}
N 50 -80 130 -80 {lab=VDD}
N 130 -80 130 0 {lab=VDD}
N 50 50 50 80 {lab=VDD}
N 50 80 130 80 {lab=VDD}
N 130 0 130 80 {lab=VDD}
C {madvlsi/pmos4.sym} 50 -50 0 0 {name=M2
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
C {madvlsi/pmos4.sym} 50 50 0 0 {name=M1
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
C {madvlsi/nmos4.sym} -70 -40 0 0 {name=M3
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
C {madvlsi/nmos4.sym} -70 40 0 0 {name=M4
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
C {iopin.sym} 130 0 0 0 {name=p1 lab=VDD}
C {iopin.sym} -170 0 0 1 {name=p2 lab=VSS}
C {ipin.sym} -120 -40 2 1 {name=p3 lab=A}
C {opin.sym} 0 90 3 1 {name=p4 lab=Y}
C {ipin.sym} -120 40 0 0 {name=p5 lab=B}
