v {xschem version=3.4.8RC file_version=1.3}
G {}
K {type=subcircuit
name=and2_top
sym_pins="A B Y VDD VSS"

}
V {}
S {type=subcircuit
name=and2_top
sym_pins="A B Y VDD VSS"


}
F {}
E {}
L 4 -90 -70 -50 -70 {}
L 4 -130 -100 -0 -110 {}
L 4 -130 -40 -0 -30 {}
L 4 -180 -60 -160 -60 {}
L 4 -180 -80 -160 -80 {}
L 4 0 -30 80 -30 {}
L 4 50 -70 80 -70 {}
L 4 0 -110 80 -110 {}
C {ipin.sym} -180 -80 0 0 {name=p1 lab=A}
C {ipin.sym} -180 -60 0 0 {name=p2 lab=B}
C {opin.sym} 80 -70 0 0 {name=p3 lab=Y}
C {iopin.sym} 80 -110 0 0 {name=p4 lab=VDD}
C {iopin.sym} 80 -30 0 0 {name=p5 lab=VSS}
C {/home/madvlsi/madvlsi/mp1/xschem/inv.sym} 0 -70 0 0 {name=X1}
C {/home/madvlsi/madvlsi/mp1/xschem/nand2.sym} -130 -70 0 0 {}
