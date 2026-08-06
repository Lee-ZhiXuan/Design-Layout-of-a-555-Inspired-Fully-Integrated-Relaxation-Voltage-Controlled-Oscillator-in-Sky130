v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -660 -80 -660 -60 {lab=VSS}
N -660 -220 -660 -200 {lab=VDD}
N -750 -220 -730 -220 {lab=bias_p}
N -770 -170 -750 -170 {lab=V_CTRL}
N -770 -110 -750 -110 {lab=v_cap}
N -660 -280 -660 -260 {lab=VSS}
N -770 -310 -750 -310 {lab=high}
N -750 -260 -730 -260 {lab=bias_n}
N -660 -420 -660 -400 {lab=VDD}
N -770 -370 -750 -370 {lab=v_cap}
N -570 -340 -550 -340 {lab=comp_n}
N -550 -340 -550 -260 {lab=comp_n}
N -550 -260 -530 -260 {lab=comp_n}
N -570 -140 -550 -140 {lab=comp_p}
N -550 -220 -550 -140 {lab=comp_p}
N -550 -220 -530 -220 {lab=comp_p}
N -460 -180 -460 -160 {lab=VSS}
N -460 -320 -460 -300 {lab=VDD}
N -260 -330 -260 -310 {lab=VDD}
N -260 -210 -260 -190 {lab=VSS}
N -110 100 -110 120 {lab=#net1}
N -110 180 -110 220 {lab=v_cap}
N -110 200 -30 200 {lab=v_cap}
N -110 280 -110 320 {lab=VSS}
N -250 280 -250 320 {lab=VSS}
N -110 80 -110 100 {lab=#net1}
N -250 100 -110 100 {lab=#net1}
N -250 100 -250 220 {lab=#net1}
N -310 250 -290 250 {lab=feedback}
N -310 50 -310 250 {lab=feedback}
N -310 50 -150 50 {lab=feedback}
N -330 200 -310 200 {lab=feedback}
N -110 0 -110 20 {lab=VDD}
N -110 50 -70 50 {lab=VDD}
N -160 150 -130 150 {lab=VSS}
N -730 180 -710 180 {lab=bias_n}
N -640 20 -640 40 {lab=VDD}
N -640 160 -640 180 {lab=VSS}
N -930 150 -930 170 {lab=VSS}
N -550 100 -510 100 {lab=high}
N -930 50 -930 90 {lab=#net2}
N -930 70 -730 70 {lab=#net2}
N -830 130 -730 130 {lab=#net3}
N -830 130 -830 230 {lab=#net3}
N -530 100 -530 130 {lab=high}
N -830 210 -530 210 {lab=#net3}
N -530 190 -530 210 {lab=#net3}
N -930 -30 -930 -10 {lab=VDD}
N -870 260 -850 260 {lab=VSS}
N -570 160 -550 160 {lab=VSS}
N -970 120 -950 120 {lab=VSS}
N -970 20 -950 20 {lab=VSS}
N -80 -310 -40 -310 {lab=VDD}
N -80 -280 -80 -240 {lab=OUT}
N -80 -180 -80 -160 {lab=VSS}
N -80 -360 -80 -340 {lab=VDD}
N -140 -310 -120 -310 {lab=#net4}
N -140 -310 -140 -210 {lab=#net4}
N -140 -210 -120 -210 {lab=#net4}
N -380 -260 -340 -260 {lab=feedback}
N -160 -260 -140 -260 {lab=#net4}
N -80 -260 -60 -260 {lab=OUT}
N -80 -210 -40 -210 {lab=VSS}
N -250 250 -210 250 {lab=VSS}
N -980 -400 -960 -400 {lab=VDD}
N -980 -360 -960 -360 {lab=VSS}
N -1040 -280 -1040 -260 {lab=VDD}
N -940 -240 -920 -240 {lab=bias_p}
N -940 -200 -920 -200 {lab=bias_n}
N -1040 -180 -1040 -160 {lab=VSS}
N -830 290 -830 340 {lab=V_CTRL}
N -1040 310 -830 310 {lab=V_CTRL}
N -1040 -80 -1040 310 {lab=V_CTRL}
N -1040 -80 -830 -80 {lab=V_CTRL}
N -830 -170 -830 -80 {lab=V_CTRL}
N -830 -170 -770 -170 {lab=V_CTRL}
C {lab_pin.sym} -660 -220 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -750 -220 0 0 {name=p6 sig_type=std_logic lab=bias_p}
C {lab_pin.sym} -660 -420 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -750 -260 0 0 {name=p8 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} -460 -320 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -770 -310 0 0 {name=p12 sig_type=std_logic lab=high}
C {lab_pin.sym} -770 -110 0 0 {name=p15 sig_type=std_logic lab=v_cap}
C {lab_pin.sym} -770 -370 0 0 {name=p16 sig_type=std_logic lab=v_cap}
C {lab_pin.sym} -360 -260 3 1 {name=p19 sig_type=std_logic lab=feedback}
C {lab_pin.sym} -550 -260 0 0 {name=p20 sig_type=std_logic lab=comp_n}
C {lab_pin.sym} -550 -220 0 0 {name=p21 sig_type=std_logic lab=comp_p}
C {lab_pin.sym} -260 -330 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_comp_n.sym} -670 -340 0 0 {name=x1}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_comp_p.sym} -670 -140 0 0 {name=x2}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_inv.sym} -260 -260 0 0 {name=x5}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_sr_latch.sym} -460 -240 0 0 {name=x7}
C {lab_pin.sym} -110 0 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -330 200 0 0 {name=p25 sig_type=std_logic lab=feedback}
C {lab_pin.sym} -30 200 0 1 {name=p26 sig_type=std_logic lab=v_cap}
C {sky130_fd_pr/cap_mim_m3_1.sym} -110 250 0 0 {name=C1 model=cap_mim_m3_1 W=20 L=20 MF=1 spiceprefix=X}
C {sky130_fd_pr/nfet_01v8.sym} -270 250 0 0 {name=M33
W=2
L=0.3
nf=5
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
C {sky130_fd_pr/pfet_01v8.sym} -130 50 0 0 {name=M34
W=2
L=0.3
nf=10
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
C {lab_pin.sym} -70 50 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -110 150 0 0 {name=R1
L=15
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} -730 180 0 0 {name=p36 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} -640 20 0 0 {name=p37 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -510 100 0 1 {name=p41 sig_type=std_logic lab=high}
C {lab_pin.sym} -930 -30 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_opamp.sym} -650 100 0 0 {name=x3}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -930 20 0 0 {name=R2
L=24
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -930 120 0 0 {name=R3
L=24
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -830 260 0 0 {name=R4
L=24
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -530 160 0 0 {name=R5
L=24
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} -570 160 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -870 260 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -970 120 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -970 20 0 0 {name=p17 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -100 -210 0 0 {name=M2
W=2
L=0.3
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
C {sky130_fd_pr/pfet_01v8.sym} -100 -310 0 0 {name=M4
W=2
L=0.3
nf=4
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
C {lab_pin.sym} -40 -310 0 1 {name=p32 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -80 -360 0 0 {name=p33 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -40 -210 0 1 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -260 -190 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -460 -160 0 0 {name=p28 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -80 -160 0 0 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -660 -60 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -660 -260 0 0 {name=p31 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -250 320 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -110 320 0 0 {name=p35 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -160 150 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -210 250 0 1 {name=p39 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -640 180 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -930 170 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {ipin.sym} -980 -400 0 0 {name=p43 lab=VDD}
C {ipin.sym} -980 -360 0 0 {name=p44 lab=VSS}
C {lab_pin.sym} -960 -400 0 1 {name=p45 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -960 -360 0 1 {name=p46 sig_type=std_logic lab=VSS}
C {iopin.sym} -60 -260 2 1 {name=p47 lab=OUT}
C {ipin.sym} -830 340 0 0 {name=p2 lab=V_CTRL}
C {lab_pin.sym} -1040 -280 0 0 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -920 -200 0 1 {name=p48 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} -920 -240 0 1 {name=p49 sig_type=std_logic lab=bias_p}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_ptat.sym} -1020 -220 0 0 {name=x4}
C {lab_pin.sym} -1040 -160 0 0 {name=p50 sig_type=std_logic lab=VSS}
