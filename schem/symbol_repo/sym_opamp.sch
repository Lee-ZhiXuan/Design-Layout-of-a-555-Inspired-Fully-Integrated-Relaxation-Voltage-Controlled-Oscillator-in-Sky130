v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -100 -180 -100 -160 {lab=VDD}
N 100 -180 100 -160 {lab=VDD}
N -100 -100 -100 -60 {lab=#net1}
N 100 -100 100 -60 {lab=#net2}
N -60 -130 60 -130 {lab=#net1}
N 0 -130 0 -80 {lab=#net1}
N -100 -80 0 -80 {lab=#net1}
N -100 0 -100 20 {lab=#net3}
N 100 0 100 20 {lab=#net3}
N -100 20 100 20 {lab=#net3}
N 0 100 0 120 {lab=VSS}
N 100 -130 140 -130 {lab=VDD}
N -140 -130 -100 -130 {lab=VDD}
N 0 70 60 70 {lab=GND}
N 140 -30 160 -30 {lab=VIN_P}
N -160 -30 -140 -30 {lab=VIN_N}
N 0 20 0 40 {lab=#net3}
N 500 -180 500 -110 {lab=VDD}
N 500 170 500 190 {lab=VSS}
N 500 0 530 0 {lab=OUT}
N 500 -80 540 -80 {lab=VDD}
N -280 -180 -260 -180 {lab=VDD}
N -280 -140 -260 -140 {lab=VSS}
N -100 -30 -60 -30 {lab=VSS}
N 60 -30 100 -30 {lab=VSS}
N 500 140 540 140 {lab=VSS}
N -80 70 -40 70 {lab=BIAS_N}
N -60 70 -60 140 {lab=BIAS_N}
N 280 -30 300 -30 {lab=VSS}
N 100 -80 460 -80 {lab=#net2}
N -60 140 460 140 {lab=BIAS_N}
N 320 -80 320 -60 {lab=#net2}
N 320 -0 320 20 {lab=#net4}
N 320 20 390 20 {lab=#net4}
N 500 -50 500 110 {lab=OUT}
N 450 20 500 20 {lab=OUT}
C {sky130_fd_pr/nfet_01v8.sym} -120 -30 0 0 {name=MN_vinn
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
C {sky130_fd_pr/pfet_01v8.sym} 80 -130 0 0 {name=MP_cs_1
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
C {sky130_fd_pr/pfet_01v8.sym} -80 -130 0 1 {name=MP_diode
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
C {sky130_fd_pr/nfet_01v8.sym} 120 -30 0 1 {name=MN_vinp
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
C {sky130_fd_pr/nfet_01v8.sym} -20 70 0 0 {name=MN_tail_1
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
C {lab_pin.sym} -100 -180 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -180 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -140 -130 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 140 -130 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {gnd.sym} 60 70 3 0 {name=l3 lab=GND}
C {sky130_fd_pr/pfet_01v8.sym} 480 -80 0 0 {name=MP_cs_2
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
C {sky130_fd_pr/nfet_01v8.sym} 480 140 0 0 {name=MN_tail_2
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
C {lab_pin.sym} 540 -80 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 500 -180 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {ipin.sym} -280 -180 0 0 {name=p7 lab=VDD}
C {ipin.sym} -280 -140 0 0 {name=p8 lab=VSS}
C {lab_pin.sym} -260 -180 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -260 -140 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 -30 0 1 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 60 -30 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 540 140 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 500 190 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 0 120 0 0 {name=p18 sig_type=std_logic lab=VSS}
C {ipin.sym} -80 70 0 0 {name=p20 lab=BIAS_N}
C {iopin.sym} 530 0 2 1 {name=p5 lab=OUT}
C {ipin.sym} -160 -30 0 0 {name=p19 lab=VIN_N}
C {ipin.sym} 160 -30 0 1 {name=p6 lab=VIN_P}
C {sky130_fd_pr/cap_mim_m3_1.sym} 420 20 3 0 {name=Cc model=cap_mim_m3_1 W=4 L=4 MF=1 spiceprefix=X}
C {lab_pin.sym} 280 -30 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 320 -30 0 0 {name=R1
L=2
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
