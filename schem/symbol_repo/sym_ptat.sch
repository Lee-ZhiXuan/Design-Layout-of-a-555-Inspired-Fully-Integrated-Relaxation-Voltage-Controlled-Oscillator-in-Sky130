v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -140 -190 -60 -190 {lab=BIAS_P}
N -140 90 -60 90 {lab=#net1}
N -180 -260 -180 -220 {lab=VDD}
N -20 -260 -20 -220 {lab=VDD}
N -20 -190 20 -190 {lab=VDD}
N -220 -190 -180 -190 {lab=VDD}
N -20 120 -20 140 {lab=#net2}
N -20 200 -20 220 {lab=VSS}
N 180 -260 180 -220 {lab=VDD}
N 180 -190 220 -190 {lab=VDD}
N 180 120 180 220 {lab=VSS}
N -180 220 -20 220 {lab=VSS}
N -180 120 -180 220 {lab=VSS}
N -100 220 -100 240 {lab=VSS}
N -60 170 -40 170 {lab=VSS}
N -140 -110 -60 -110 {lab=BIAS_P}
N -20 -110 20 -110 {lab=VDD}
N -220 -110 -180 -110 {lab=VDD}
N -20 -160 -20 -140 {lab=#net3}
N -180 -160 -180 -140 {lab=#net4}
N -100 -190 -100 -110 {lab=BIAS_P}
N -140 10 -60 10 {lab=#net1}
N -180 40 -180 60 {lab=#net5}
N -20 40 -20 60 {lab=#net6}
N -100 10 -100 90 {lab=#net1}
N 180 -160 180 -120 {lab=#net7}
N -20 -80 -20 -20 {lab=BIAS_P}
N -180 -80 -180 -20 {lab=#net1}
N -100 -110 -100 -60 {lab=BIAS_P}
N -100 -60 -20 -60 {lab=BIAS_P}
N -20 -60 80 -60 {lab=BIAS_P}
N -180 -40 -100 -40 {lab=#net1}
N -100 -40 -100 10 {lab=#net1}
N 180 -60 180 60 {lab=#net7}
N 180 40 240 40 {lab=#net7}
N 240 40 240 90 {lab=#net7}
N 180 -120 180 -60 {lab=#net7}
N -20 220 180 220 {lab=VSS}
N 110 -190 140 -190 {lab=BIAS_P}
N 80 -60 110 -60 {lab=BIAS_P}
N -220 10 -180 10 {lab=VSS}
N -220 90 -180 90 {lab=VSS}
N -20 10 20 10 {lab=VSS}
N -20 90 20 90 {lab=VSS}
N 140 90 180 90 {lab=VSS}
N -460 -260 -440 -260 {lab=VDD}
N -460 -220 -440 -220 {lab=VSS}
N 220 90 260 90 {lab=#net7}
N 110 -190 110 -60 {lab=BIAS_P}
N 110 -60 110 -40 {lab=BIAS_P}
N -360 -110 -320 -110 {lab=VDD}
N -340 -40 -180 -40 {lab=#net1}
N -360 -160 -360 -140 {lab=VDD}
N -400 220 -180 220 {lab=VSS}
N -360 40 -360 60 {lab=#net8}
N -400 10 -360 10 {lab=VSS}
N -400 90 -360 90 {lab=VSS}
N -360 -40 -340 -40 {lab=#net1}
N -360 -40 -360 -20 {lab=#net1}
N -280 -40 -280 90 {lab=#net1}
N -320 90 -280 90 {lab=#net1}
N -320 10 -280 10 {lab=#net1}
N -460 -40 -460 220 {lab=VSS}
N -460 220 -400 220 {lab=VSS}
N -360 -260 -360 -160 {lab=VDD}
N -420 -110 -400 -110 {lab=VSS}
N -360 -80 -360 -40 {lab=#net1}
N -460 -110 -420 -110 {lab=VSS}
N -460 -110 -460 -40 {lab=VSS}
N -360 120 -360 220 {lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -40 90 0 0 {name=MN_ptat2
W=2
L=0.5
nf=2 
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
C {sky130_fd_pr/pfet_01v8.sym} -40 -190 0 0 {name=MP_diode1
W=2
L=0.5
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} -160 -190 0 1 {name=MP_mir1_l
W=2
L=0.5
nf=2
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
C {sky130_fd_pr/nfet_01v8.sym} -160 90 0 1 {name=MN_diode2
W=2
L=0.5
nf=4 
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
C {lab_pin.sym} -180 -260 0 0 {name=p31 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -20 -260 0 0 {name=p36 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -220 -190 0 0 {name=p37 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 20 -190 0 1 {name=p39 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 160 -190 0 0 {name=MP_inv
W=2
L=0.75
nf=5
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
C {lab_pin.sym} 180 -260 0 0 {name=p41 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 220 -190 0 1 {name=p42 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} -40 -110 0 0 {name=MP_diode2
W=2
L=0.5
nf=2
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
C {sky130_fd_pr/pfet_01v8.sym} -160 -110 0 1 {name=MP_mir2_l
W=2
L=0.5
nf=2
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
C {lab_pin.sym} -220 -110 0 0 {name=p43 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 20 -110 0 1 {name=p44 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -40 10 0 0 {name=MN_ptat1
W=2
L=0.5
nf=2 
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
C {sky130_fd_pr/nfet_01v8.sym} -160 10 0 1 {name=MN_diode1
W=2
L=0.5
nf=4
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
C {sky130_fd_pr/nfet_01v8.sym} 200 90 0 1 {name=MN_inv
W=2.5
L=0.75
nf=2 
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
C {ipin.sym} -460 -260 0 0 {name=p1 lab=VDD}
C {lab_pin.sym} -220 10 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -220 90 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 140 90 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 20 10 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 20 90 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 170 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -100 240 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {ipin.sym} -460 -220 0 0 {name=p11 lab=VSS}
C {lab_pin.sym} -440 -260 0 1 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -440 -220 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {iopin.sym} 110 -40 1 0 {name=p14 lab=BIAS_P}
C {iopin.sym} 260 90 3 1 {name=p15 lab=BIAS_N}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -20 170 0 0 {name=R1
L=2.8
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/pfet_01v8.sym} -380 -110 0 0 {name=MP_startup
W=1
L=13
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
C {lab_pin.sym} -320 -110 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -360 -260 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} -340 90 0 1 {name=MN_diode3
W=2
L=0.5
nf=4 
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
C {sky130_fd_pr/nfet_01v8.sym} -340 10 0 1 {name=MN_diode4
W=2
L=0.5
nf=4
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
C {lab_pin.sym} -400 10 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -400 90 0 0 {name=p17 sig_type=std_logic lab=VSS}
