v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -580 -460 -580 -440 {lab=VDD}
N -580 -380 -580 -360 {lab=GND}
N -580 -290 -580 -270 {lab=S}
N -580 -210 -580 -190 {lab=GND}
N -580 -150 -580 -130 {lab=R}
N -580 -70 -580 -50 {lab=GND}
N 170 -420 170 -400 {lab=VDD}
N 250 -360 270 -360 {lab=neg}
N 250 -320 270 -320 {lab=pos}
N 170 -280 170 -260 {lab=GND}
N 70 -360 100 -360 {lab=S}
N 70 -320 100 -320 {lab=R}
N 170 -200 170 -180 {lab=VDD}
N 250 -140 270 -140 {lab=neg2}
N 250 -100 270 -100 {lab=pos2}
N 170 -60 170 -40 {lab=GND}
N 70 -140 100 -140 {lab=S}
N 70 -100 100 -100 {lab=R}
C {lab_pin.sym} -580 -460 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {vsource.sym} -580 -410 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -580 -360 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -580 -290 0 0 {name=p27 sig_type=std_logic lab=S}
C {vsource.sym} -580 -240 0 0 {name=V3 value="PWL(0u 0 22u 0 22.001u 1.8 32u 1.8 32.001u 0 33u 0 33.001u 1.8 43u 1.8 43.001u 0 44u 0)" savecurrent=false}
C {gnd.sym} -580 -190 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -580 -150 0 0 {name=p12 sig_type=std_logic lab=R}
C {vsource.sym} -580 -100 0 0 {name=V5 value="PWL(0u 0 11u 0 11.001u 1.8 21u 1.8 21.001u 0 33u 0 33.001u 1.8 43u 1.8 43.001u 0 44u 0)" savecurrent=false}
C {gnd.sym} -580 -50 0 0 {name=l7 lab=GND}
C {code.sym} -480 -460 0 0 {name=Simulation only_toplevel=false value="
.include /home/zhixuan/projects/fyp_vco/magic/ip/sr_latch/sr_latch.spice
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 10n 45u
.save all

.control
    run
    plot S R pos neg
.endc

.end
"}
C {lab_pin.sym} 70 -320 0 0 {name=p1 sig_type=std_logic lab=R}
C {lab_pin.sym} 70 -360 0 0 {name=p2 sig_type=std_logic lab=S}
C {lab_pin.sym} 170 -420 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {gnd.sym} 170 -260 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 270 -360 0 1 {name=p4 sig_type=std_logic lab=neg}
C {lab_pin.sym} 270 -320 0 1 {name=p5 sig_type=std_logic lab=pos}
C {lab_pin.sym} 70 -100 0 0 {name=p6 sig_type=std_logic lab=R}
C {lab_pin.sym} 70 -140 0 0 {name=p7 sig_type=std_logic lab=S}
C {lab_pin.sym} 170 -200 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {gnd.sym} 170 -40 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 270 -140 0 1 {name=p9 sig_type=std_logic lab=neg2}
C {lab_pin.sym} 270 -100 0 1 {name=p10 sig_type=std_logic lab=pos2}
C {pex_sr_latch.sym} 170 -120 0 0 {name=x2}
C {sym_sr_latch.sym} 170 -340 0 0 {name=x1}
