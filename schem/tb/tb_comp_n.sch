v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -310 -170 -310 -150 {lab=VDD}
N -310 -90 -310 -70 {lab=GND}
N -230 -170 -230 -150 {lab=vinn}
N -230 -90 -230 -70 {lab=GND}
N -170 -170 -170 -150 {lab=vinp}
N -170 -90 -170 -70 {lab=GND}
N 170 -80 250 -80 {lab=#net1}
N 250 -100 250 -80 {lab=#net1}
N 320 -260 320 -240 {lab=VDD}
N 70 -160 70 -140 {lab=VDD}
N 70 -60 70 -40 {lab=GND}
N 320 -120 320 -100 {lab=GND}
N 210 -150 230 -150 {lab=vinn}
N 210 -210 230 -210 {lab=vinp}
N 410 -180 430 -180 {lab=vout}
N 170 210 250 210 {lab=#net2}
N 250 190 250 210 {lab=#net2}
N 320 30 320 50 {lab=VDD}
N 70 130 70 150 {lab=VDD}
N 70 230 70 250 {lab=GND}
N 320 170 320 190 {lab=GND}
N 210 140 230 140 {lab=vinn}
N 210 80 230 80 {lab=vinp}
N 410 110 430 110 {lab=vout2}
C {lab_pin.sym} -310 -170 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -310 -120 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -310 -70 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -230 -170 0 0 {name=p3 sig_type=std_logic lab=vinn}
C {vsource.sym} -230 -120 0 0 {name=V2 value=1.2 savecurrent=false}
C {gnd.sym} -230 -70 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -170 -170 0 0 {name=p4 sig_type=std_logic lab=vinp}
C {vsource.sym} -170 -120 0 0 {name=V3 value="PWL(0 0 0.01u 0 0.11u 1.8 0.21u 0)" savecurrent=false}
C {gnd.sym} -170 -70 0 0 {name=l7 lab=GND}
C {code.sym} -510 -160 0 0 {name=Simulation only_toplevel=false value="
.include /home/zhixuan/projects/fyp_vco/magic/ip/comp_n/comp_n.spice
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 0.1n 0.21u
.save all

.control
    run
    plot vinn vinp vout vout2

   echo \\"vinn vinp vout2\\" > /home/zhixuan/projects/fyp_vco/schem/tb/compn_tb_out1.txt
   print col vinn vinp vout2 >> /home/zhixuan/projects/fyp_vco/schem/tb/compn_tb_out1.txt
.endc

.end
"}
C {lab_pin.sym} 320 -260 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 70 -160 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {gnd.sym} 70 -40 0 0 {name=l1 lab=GND}
C {gnd.sym} 320 -100 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 210 -150 0 0 {name=p6 sig_type=std_logic lab=vinn}
C {lab_pin.sym} 210 -210 0 0 {name=p7 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 430 -180 0 1 {name=p8 sig_type=std_logic lab=vout}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_ptat.sym} 90 -100 0 0 {name=x1}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_comp_n.sym} 310 -180 0 0 {name=x2}
C {lab_pin.sym} 320 30 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 70 130 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {gnd.sym} 70 250 0 0 {name=l3 lab=GND}
C {gnd.sym} 320 190 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 210 140 0 0 {name=p11 sig_type=std_logic lab=vinn}
C {lab_pin.sym} 210 80 0 0 {name=p12 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 430 110 0 1 {name=p13 sig_type=std_logic lab=vout2}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_ptat.sym} 90 190 0 0 {name=x3}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/pex_comp_n.sym} 310 110 0 0 {name=x4}
