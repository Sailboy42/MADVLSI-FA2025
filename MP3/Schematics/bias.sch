v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 10 -50 40 -50 {lab=VREFG}
N 10 -50 10 -20 {lab=VREFG}
N 0 -50 10 -50 {lab=VREFG}
C {madvlsi/nmos3.sym} 40 -20 0 0 {name=M1
L=1
W=5
body=GND
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
C {madvlsi/resistor.sym} -90 -120 1 0 {name=EXT_REF
value=33k
m=1}
C {madvlsi/gnd.sym} 40 10 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 0 -50 2 1 {name=p1 sig_type=std_logic lab=VREFG}
C {madvlsi/vsource.sym} -180 -50 0 0 {name=VREF
value=1}
C {madvlsi/gnd.sym} -180 -20 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -180 -80 0 0 {name=p2 sig_type=std_logic lab=VREF}
C {lab_pin.sym} -120 -120 0 0 {name=p3 sig_type=std_logic lab=VREF}
C {lab_pin.sym} -60 -120 2 0 {name=p4 sig_type=std_logic lab=VREFG}
