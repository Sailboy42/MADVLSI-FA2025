v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N 0 -170 60 -170 {lab=D}
N 60 -110 110 -110 {lab=D}
N 60 -170 60 -110 {lab=D}
N 0 -110 0 -100 {lab=IOUT}
N 0 -100 70 -100 {lab=IOUT}
N 70 -170 70 -100 {lab=IOUT}
N 70 -170 110 -170 {lab=IOUT}
N 110 -110 130 -110 {lab=D}
N 110 -170 130 -170 {lab=IOUT}
N 210 -170 270 -170 {lab=D}
N 270 -110 320 -110 {lab=D}
N 270 -170 270 -110 {lab=D}
N 210 -110 210 -100 {lab=IDUMP}
N 210 -100 280 -100 {lab=IDUMP}
N 280 -170 280 -100 {lab=IDUMP}
N 280 -170 320 -170 {lab=IDUMP}
N 320 -110 340 -110 {lab=D}
N 320 -170 340 -170 {lab=IDUMP}
N 160 -140 170 -140 {lab=B}
N 170 -140 180 -140 {lab=B}
N -30 -140 -30 -40 {lab=BBAR}
N -30 -40 170 -40 {lab=BBAR}
N 170 -40 370 -40 {lab=BBAR}
N 370 -140 370 -40 {lab=BBAR}
N 270 -180 270 -170 {lab=D}
N 170 -180 270 -180 {lab=D}
N 60 -180 170 -180 {lab=D}
N 60 -180 60 -170 {lab=D}
C {madvlsi/pmos3.sym} 0 -140 0 0 {name=M1
L=0.5
W=4
body=VDD
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
C {madvlsi/nmos3.sym} 130 -140 0 1 {name=M2
L=0.5
W=2
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
C {lab_pin.sym} 70 -100 1 1 {name=p1 sig_type=std_logic lab=IOUT}
C {lab_pin.sym} 170 -140 3 0 {name=p4 sig_type=std_logic lab=B}
C {madvlsi/pmos3.sym} 210 -140 0 0 {name=M3
L=0.5
W=4
body=VDD
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
C {madvlsi/nmos3.sym} 340 -140 0 1 {name=M4
L=0.5
W=2
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
C {lab_pin.sym} 170 -180 1 0 {name=p6 sig_type=std_logic lab=D}
C {lab_pin.sym} 170 -40 3 0 {name=p7 sig_type=std_logic lab=BBAR}
C {lab_pin.sym} 280 -100 1 1 {name=p3 sig_type=std_logic lab=IDUMP}
C {madvlsi/vsource.sym} -110 -110 0 0 {name=V1
value=0.9
}
C {lab_pin.sym} -110 -140 2 1 {name=p2 sig_type=std_logic lab=IDUMP}
C {madvlsi/gnd.sym} -110 -80 0 0 {name=l1 lab=GND}
