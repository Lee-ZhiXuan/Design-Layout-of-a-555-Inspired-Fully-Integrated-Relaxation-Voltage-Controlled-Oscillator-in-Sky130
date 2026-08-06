v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -320 -160 -320 -140 {lab=VDD}
N -320 -80 -320 -60 {lab=GND}
N -240 -160 -240 -140 {lab=vinp}
N -240 -80 -240 -60 {lab=GND}
N -180 -160 -180 -140 {lab=vinn}
N -180 -80 -180 -60 {lab=GND}
N 170 -220 250 -220 {lab=#net1}
N 250 -220 250 -200 {lab=#net1}
N 320 -220 320 -180 {lab=VDD}
N 70 -260 70 -240 {lab=VDD}
N 70 -160 70 -140 {lab=GND}
N 320 -60 320 -40 {lab=GND}
N 410 -120 430 -120 {lab=vout}
N 210 -150 230 -150 {lab=vinp}
N 210 -90 230 -90 {lab=vinn}
N 170 20 250 20 {lab=#net2}
N 250 20 250 40 {lab=#net2}
N 320 20 320 60 {lab=VDD}
N 70 -20 70 0 {lab=VDD}
N 70 80 70 100 {lab=GND}
N 320 180 320 200 {lab=GND}
N 410 120 430 120 {lab=vout2}
N 210 90 230 90 {lab=vinp}
N 210 150 230 150 {lab=vinn}
C {lab_pin.sym} -320 -160 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {vsource.sym} -320 -110 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -320 -60 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -240 -160 0 0 {name=p25 sig_type=std_logic lab=vinp}
C {vsource.sym} -240 -110 0 0 {name=V2 value=0.6 savecurrent=false}
C {gnd.sym} -240 -60 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -180 -160 0 0 {name=p27 sig_type=std_logic lab=vinn}
C {vsource.sym} -180 -110 0 0 {name=V3 value="PWL(0 0 0.01u 0 0.11u 1.8 0.21u 0)" savecurrent=false}
C {gnd.sym} -180 -60 0 0 {name=l3 lab=GND}
C {code.sym} -510 -150 0 0 {name=Simulation only_toplevel=false value="
.include /home/zhixuan/projects/fyp_vco/magic/ip/comp_p/comp_p.spice
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 0.1n 0.21u
.save all

.control
    run
    plot vinn vinp vout vout2

    echo \\"vinn vinp vout2\\" > /home/zhixuan/projects/fyp_vco/schem/tb/compp_tb_out1.txt
    print col vinn vinp vout2 >> /home/zhixuan/projects/fyp_vco/schem/tb/compp_tb_out1.txt
.endc

.end
"}
C {lab_pin.sym} 320 -220 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 70 -260 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 210 -150 0 0 {name=p3 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 210 -90 0 0 {name=p4 sig_type=std_logic lab=vinn}
C {gnd.sym} 70 -140 0 0 {name=l4 lab=GND}
C {gnd.sym} 320 -40 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 430 -120 0 1 {name=p5 sig_type=std_logic lab=vout}
C {lab_pin.sym} 320 20 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 70 -20 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 210 90 0 0 {name=p8 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 210 150 0 0 {name=p9 sig_type=std_logic lab=vinn}
C {gnd.sym} 70 100 0 0 {name=l6 lab=GND}
C {gnd.sym} 320 200 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 430 120 0 1 {name=p10 sig_type=std_logic lab=vout2}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_comp_p.sym} 310 -120 0 0 {name=x1}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/pex_comp_p.sym} 310 120 0 0 {name=x2}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_ptat.sym} 90 -200 0 0 {name=x3}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/sym_ptat.sym} 90 40 0 0 {name=x4}
