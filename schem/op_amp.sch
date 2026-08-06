v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 -80 -100 -60 {lab=VDD}
N 100 -80 100 -60 {lab=VDD}
N -100 0 -100 40 {lab=#net1}
N 100 0 100 40 {lab=#net2}
N -60 -30 60 -30 {lab=#net1}
N -0 -30 -0 20 {lab=#net1}
N -100 20 -0 20 {lab=#net1}
N -100 100 -100 120 {lab=#net3}
N 100 100 100 120 {lab=#net3}
N -100 120 100 120 {lab=#net3}
N 0 200 0 220 {lab=GND}
N 100 -30 140 -30 {lab=VDD}
N -140 -30 -100 -30 {lab=VDD}
N -0 170 60 170 {lab=GND}
N 140 70 160 70 {lab=pos}
N -160 70 -140 70 {lab=neg}
N -350 -250 -350 -230 {lab=VDD}
N -350 -170 -350 -150 {lab=GND}
N 100 20 140 20 {lab=#net2}
N -550 130 -550 150 {lab=GND}
N -0 120 0 140 {lab=#net3}
N 140 20 190 20 {lab=#net2}
N 230 -80 230 -10 {lab=VDD}
N -70 170 -70 250 {lab=bias_n}
N -70 250 160 250 {lab=bias_n}
N 160 170 160 250 {lab=bias_n}
N 160 170 190 170 {lab=bias_n}
N 230 50 230 140 {lab=out}
N 230 200 230 220 {lab=GND}
N 230 100 260 100 {lab=out}
N 230 170 290 170 {lab=GND}
N 230 20 270 20 {lab=VDD}
N 30 70 100 70 {lab=GND}
N -100 70 -40 70 {lab=GND}
N -550 190 -550 210 {lab=pos}
N -550 270 -550 290 {lab=GND}
N -400 -30 -400 -10 {lab=neg}
N -400 50 -400 70 {lab=out}
N -550 -40 -550 -10 {lab=neg}
N -550 50 -550 70 {lab=neg_in}
N -570 60 -550 60 {lab=neg_in}
N -370 290 -370 320 {lab=VDD}
N -370 400 -370 420 {lab=GND}
N -270 380 -240 380 {lab=bias_n}
N -100 170 -40 170 {lab=bias_n}
C {code.sym} -510 -240 0 0 {name=Simulation only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 1u 5m
.save all
.op

.control
    run
    plot out pos neg_in 1.8 0
.endc

.end
"}
C {sky130_fd_pr/nfet_01v8.sym} -120 70 0 0 {name=M1
W=1
L=0.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 80 -30 0 0 {name=M2
W=2
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -80 -30 0 1 {name=M3
W=2
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 120 70 0 1 {name=M4
W=1
L=0.5
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 170 0 0 {name=M5
W=2
L=0.75
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} -100 -80 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -80 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -140 -30 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 -30 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 0 220 0 0 {name=l2 lab=GND}
C {gnd.sym} 60 170 3 0 {name=l3 lab=GND}
C {lab_pin.sym} 260 100 0 1 {name=p5 sig_type=std_logic lab=out}
C {lab_pin.sym} -350 -250 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {vsource.sym} -350 -200 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -350 -150 0 0 {name=l7 lab=GND}
C {vsource.sym} -550 100 0 0 {name=V3 value=0.8 savecurrent=false}
C {gnd.sym} -550 150 0 0 {name=l9 lab=GND}
C {lab_pin.sym} -550 -40 0 0 {name=p13 sig_type=std_logic lab=neg}
C {lab_pin.sym} -160 70 0 0 {name=p6 sig_type=std_logic lab=neg}
C {sky130_fd_pr/pfet_01v8.sym} 210 20 0 0 {name=M7
W=2
L=0.5
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 210 170 0 0 {name=M8
W=2
L=0.75
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {gnd.sym} 230 220 0 0 {name=l8 lab=GND}
C {gnd.sym} 290 170 3 0 {name=l10 lab=GND}
C {lab_pin.sym} 270 20 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 230 -80 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {gnd.sym} -40 70 3 0 {name=l1 lab=GND}
C {gnd.sym} 30 70 1 0 {name=l11 lab=GND}
C {lab_pin.sym} 160 70 0 1 {name=p11 sig_type=std_logic lab=pos}
C {vsource.sym} -550 240 0 0 {name=V1 value=0.9 savecurrent=false}
C {gnd.sym} -550 290 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -550 190 0 0 {name=p12 sig_type=std_logic lab=pos}
C {lab_pin.sym} -400 70 0 1 {name=p14 sig_type=std_logic lab=out}
C {res.sym} -400 20 0 0 {name=R2
value=50k
footprint=1206
device=resistor
m=1}
C {res.sym} -550 20 0 0 {name=R1
value=50k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -400 -30 0 0 {name=p15 sig_type=std_logic lab=neg}
C {lab_pin.sym} -570 60 0 0 {name=p17 sig_type=std_logic lab=neg_in}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_ptat.sym} -350 360 0 0 {name=x1}
C {lab_pin.sym} -370 290 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {gnd.sym} -370 420 0 0 {name=l12 lab=GND}
C {lab_pin.sym} -240 380 0 1 {name=p18 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} -100 170 0 0 {name=p19 sig_type=std_logic lab=bias_n}
