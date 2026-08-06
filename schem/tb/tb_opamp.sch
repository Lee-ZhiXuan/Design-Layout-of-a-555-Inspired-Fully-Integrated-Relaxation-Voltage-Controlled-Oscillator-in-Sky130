v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -630 -230 -630 -210 {lab=VDD}
N -630 -150 -630 -130 {lab=GND}
N -70 70 -50 70 {lab=bias_n}
N -240 -40 -240 -20 {lab=#net1}
N -240 -40 -70 -40 {lab=#net1}
N 20 -90 20 -70 {lab=VDD}
N 20 50 20 70 {lab=GND}
N 110 -10 130 -10 {lab=high}
N 130 -10 130 20 {lab=high}
N 130 80 130 100 {lab=#net2}
N -180 100 130 100 {lab=#net2}
N -180 20 -180 120 {lab=#net2}
N -180 20 -70 20 {lab=#net2}
N -180 280 -180 300 {lab=GND}
N -230 150 -230 170 {lab=GND}
N -230 150 -200 150 {lab=GND}
N 80 50 80 70 {lab=GND}
N 80 50 110 50 {lab=GND}
N -180 180 -180 220 {lab=low}
N -180 200 -140 200 {lab=low}
N 130 -10 160 -10 {lab=high}
N -510 0 -510 20 {lab=VDD}
N -410 80 -390 80 {lab=bias_n}
N -510 100 -510 120 {lab=GND}
N -290 10 -290 30 {lab=GND}
N -290 10 -260 10 {lab=GND}
N -290 -90 -290 -70 {lab=GND}
N -290 -90 -260 -90 {lab=GND}
N -240 -140 -240 -120 {lab=VDD}
N -240 40 -240 60 {lab=GND}
N -240 -60 -240 -40 {lab=#net1}
N -70 570 -50 570 {lab=bias_n}
N -240 460 -240 480 {lab=#net3}
N -240 460 -70 460 {lab=#net3}
N 20 410 20 430 {lab=VDD}
N 20 550 20 570 {lab=GND}
N 110 490 130 490 {lab=high2}
N 130 490 130 520 {lab=high2}
N 130 580 130 600 {lab=#net4}
N -180 600 130 600 {lab=#net4}
N -180 520 -180 620 {lab=#net4}
N -180 520 -70 520 {lab=#net4}
N -180 780 -180 800 {lab=GND}
N -230 650 -230 670 {lab=GND}
N -230 650 -200 650 {lab=GND}
N 80 550 80 570 {lab=GND}
N 80 550 110 550 {lab=GND}
N -180 680 -180 720 {lab=low2}
N -180 700 -140 700 {lab=low2}
N 130 490 160 490 {lab=high2}
N -510 500 -510 520 {lab=VDD}
N -410 580 -390 580 {lab=bias_n}
N -510 600 -510 620 {lab=GND}
N -290 510 -290 530 {lab=GND}
N -290 510 -260 510 {lab=GND}
N -290 410 -290 430 {lab=GND}
N -290 410 -260 410 {lab=GND}
N -240 360 -240 380 {lab=VDD}
N -240 540 -240 560 {lab=GND}
N -240 440 -240 460 {lab=#net3}
C {code.sym} -790 -220 0 0 {name=Simulation only_toplevel=false value="
.include /home/zhixuan/projects/fyp_vco/magic/ip/opamp/opamp.spice
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 1u 5m
.save all
.op

.control
    run
    plot 1.8 0 0.9 high low high2 low2
.endc

.end
"}
C {lab_pin.sym} -630 -230 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {vsource.sym} -630 -180 0 0 {name=V2 value=1.8 savecurrent=false}
C {gnd.sym} -630 -130 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -140 200 0 1 {name=p11 sig_type=std_logic lab=low}
C {lab_pin.sym} 160 -10 0 1 {name=p13 sig_type=std_logic lab=high}
C {sym_opamp.sym} 10 -10 0 0 {name=x3}
C {lab_pin.sym} -70 70 0 0 {name=p36 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} 20 -90 0 0 {name=p37 sig_type=std_logic lab=VDD}
C {gnd.sym} 20 70 0 0 {name=l28 lab=GND}
C {vsource.sym} -180 250 0 0 {name=V4 value=0.6 savecurrent=false}
C {gnd.sym} -180 300 0 0 {name=l29 lab=GND}
C {gnd.sym} -230 170 0 0 {name=l30 lab=GND}
C {gnd.sym} 80 70 0 0 {name=l31 lab=GND}
C {sym_ptat.sym} -490 60 0 0 {name=x4}
C {gnd.sym} -510 120 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -510 0 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -390 80 0 1 {name=p3 sig_type=std_logic lab=bias_n}
C {gnd.sym} -290 30 0 0 {name=l13 lab=GND}
C {gnd.sym} -290 -70 0 0 {name=l14 lab=GND}
C {gnd.sym} -240 60 0 0 {name=l15 lab=GND}
C {lab_pin.sym} -240 -140 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -240 -90 0 0 {name=R1
L=20
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -240 10 0 0 {name=R2
L=20
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -180 150 0 0 {name=R3
L=20
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 130 50 0 0 {name=R4
L=20
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {lab_pin.sym} -140 700 0 1 {name=p1 sig_type=std_logic lab=low2}
C {lab_pin.sym} 160 490 0 1 {name=p4 sig_type=std_logic lab=high2}
C {lab_pin.sym} -70 570 0 0 {name=p5 sig_type=std_logic lab=bias_n}
C {lab_pin.sym} 20 410 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {gnd.sym} 20 570 0 0 {name=l1 lab=GND}
C {vsource.sym} -180 750 0 0 {name=V1 value=0.6 savecurrent=false}
C {gnd.sym} -180 800 0 0 {name=l2 lab=GND}
C {gnd.sym} -230 670 0 0 {name=l3 lab=GND}
C {gnd.sym} 80 570 0 0 {name=l5 lab=GND}
C {sym_ptat.sym} -490 560 0 0 {name=x2}
C {gnd.sym} -510 620 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -510 500 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -390 580 0 1 {name=p9 sig_type=std_logic lab=bias_n}
C {gnd.sym} -290 530 0 0 {name=l8 lab=GND}
C {gnd.sym} -290 430 0 0 {name=l9 lab=GND}
C {gnd.sym} -240 560 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -240 360 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -240 410 0 0 {name=R5
L=20
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -240 510 0 0 {name=R6
L=20
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -180 650 0 0 {name=R7
L=20
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} 130 550 0 0 {name=R8
L=20
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {pex_opamp.sym} 10 490 0 0 {name=x1}
