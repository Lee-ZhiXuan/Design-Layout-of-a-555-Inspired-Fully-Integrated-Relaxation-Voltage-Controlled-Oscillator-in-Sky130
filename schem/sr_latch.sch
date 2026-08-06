v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -180 -100 -180 -80 {lab=#net1}
N -180 -130 -140 -130 {lab=VDD}
N -180 -180 -180 -160 {lab=VDD}
N -180 -20 -180 20 {lab=pos}
N -260 20 -100 20 {lab=pos}
N -100 20 -100 40 {lab=pos}
N -260 20 -260 40 {lab=pos}
N -260 100 -260 120 {lab=GND}
N -260 120 -100 120 {lab=GND}
N -100 100 -100 120 {lab=GND}
N -260 70 -100 70 {lab=GND}
N -180 70 -180 120 {lab=GND}
N -180 120 -180 140 {lab=GND}
N -320 70 -300 70 {lab=S}
N -60 70 -40 70 {lab=neg}
N -240 -130 -220 -130 {lab=S}
N 180 -100 180 -80 {lab=#net2}
N 180 -50 220 -50 {lab=VDD}
N 180 -180 180 -160 {lab=VDD}
N 180 -20 180 20 {lab=neg}
N 100 20 260 20 {lab=neg}
N 260 20 260 40 {lab=neg}
N 100 20 100 40 {lab=neg}
N 100 100 100 120 {lab=GND}
N 100 120 260 120 {lab=GND}
N 260 100 260 120 {lab=GND}
N 100 70 260 70 {lab=GND}
N 180 70 180 120 {lab=GND}
N 180 120 180 140 {lab=GND}
N 40 70 60 70 {lab=pos}
N 300 70 320 70 {lab=R}
N 120 -50 140 -50 {lab=pos}
N -320 -130 -240 -130 {lab=S}
N -320 -130 -320 70 {lab=S}
N -140 -50 -40 -50 {lab=neg}
N -40 -50 -40 70 {lab=neg}
N -220 -50 -180 -50 {lab=VDD}
N -340 0 -320 0 {lab=S}
N 140 -130 180 -130 {lab=VDD}
N 220 -130 240 -130 {lab=R}
N 320 -130 320 70 {lab=R}
N 240 -130 320 -130 {lab=R}
N 40 -50 40 70 {lab=pos}
N 40 -50 120 -50 {lab=pos}
N 320 0 340 0 {lab=R}
N -180 -10 40 -10 {lab=pos}
N -40 10 180 10 {lab=neg}
N 20 10 20 120 {lab=neg}
N -820 -160 -820 -140 {lab=VDD}
N -820 -80 -820 -60 {lab=GND}
N -820 10 -820 30 {lab=S}
N -820 90 -820 110 {lab=GND}
N -820 150 -820 170 {lab=R}
N -820 230 -820 250 {lab=GND}
N -20 -10 -20 120 {lab=pos}
C {sky130_fd_pr/nfet_01v8.sym} -80 70 0 1 {name=M1
W=1
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} -200 -130 0 0 {name=M2
W=2
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} -160 -50 0 1 {name=M3
W=2
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} -280 70 0 0 {name=M4
W=1
L=0.15
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
C {gnd.sym} -180 140 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -140 -130 0 1 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -180 -180 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 280 70 0 1 {name=M5
W=1
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 200 -130 0 1 {name=M6
W=2
L=0.15
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
C {sky130_fd_pr/pfet_01v8.sym} 160 -50 0 0 {name=M7
W=2
L=0.15
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
C {sky130_fd_pr/nfet_01v8.sym} 80 70 0 0 {name=M8
W=1
L=0.15
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
C {gnd.sym} 180 140 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 220 -50 0 1 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 180 -180 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -220 -50 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -340 0 0 0 {name=p1 sig_type=std_logic lab=S}
C {lab_pin.sym} 140 -130 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 340 0 0 1 {name=p8 sig_type=std_logic lab=R}
C {lab_pin.sym} -20 120 0 0 {name=p9 sig_type=std_logic lab=pos}
C {lab_pin.sym} 20 120 0 1 {name=p10 sig_type=std_logic lab=neg}
C {lab_pin.sym} -820 -160 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {vsource.sym} -820 -110 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -820 -60 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -820 10 0 0 {name=p27 sig_type=std_logic lab=S}
C {vsource.sym} -820 60 0 0 {name=V3 value="PWL(0u 0 22u 0 22.001u 1.8 32u 1.8 32.001u 0 33u 0 33.001u 1.8 43u 1.8 43.001u 0 44u 0)" savecurrent=false}
C {gnd.sym} -820 110 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -820 150 0 0 {name=p12 sig_type=std_logic lab=R}
C {vsource.sym} -820 200 0 0 {name=V5 value="PWL(0u 0 11u 0 11.001u 1.8 21u 1.8 21.001u 0 33u 0 33.001u 1.8 43u 1.8 43.001u 0 44u 0)" savecurrent=false}
C {gnd.sym} -820 250 0 0 {name=l7 lab=GND}
C {code.sym} -720 -160 0 0 {name=Simulation only_toplevel=false value="
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 10n 45u
.save all

.control
    run
    plot S R pos neg
.endc

.end
"}
