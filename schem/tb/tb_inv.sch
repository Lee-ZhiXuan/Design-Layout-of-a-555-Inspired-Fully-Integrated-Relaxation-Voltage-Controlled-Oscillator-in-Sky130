v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -390 -330 -390 -310 {lab=VDD}
N -390 -250 -390 -230 {lab=GND}
N -390 -170 -390 -150 {lab=vin}
N -390 -90 -390 -70 {lab=GND}
N 270 -190 290 -190 {lab=vout}
N 170 -140 170 -130 {lab=GND}
N 170 -250 170 -240 {lab=VDD}
N 70 -190 90 -190 {lab=vin}
C {lab_pin.sym} -390 -330 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {vsource.sym} -390 -280 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} -390 -230 0 0 {name=l3 lab=GND}
C {code.sym} -290 -330 0 0 {name=Simulation only_toplevel=false value="
.include /home/zhixuan/projects/fyp_vco/magic/ip/inv_1/inv_1.spice
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.tran 10n 45u
.save all

.control
    run
    plot vin vout
.endc

.end
"}
C {lab_pin.sym} -390 -170 0 0 {name=p27 sig_type=std_logic lab=vin}
C {vsource.sym} -390 -120 0 0 {name=V3 value="PWL(0u 0 22u 0 22.001u 1.8 32u 1.8 32.001u 0 33u 0 33.001u 1.8 43u 1.8 43.001u 0 44u 0)" savecurrent=false}
C {gnd.sym} -390 -70 0 0 {name=l5 lab=GND}
C {gnd.sym} 170 -130 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 170 -250 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 290 -190 0 1 {name=p5 sig_type=std_logic lab=vout}
C {lab_pin.sym} 70 -190 0 0 {name=p6 sig_type=std_logic lab=vin}
C {/home/zhixuan/projects/fyp_vco/schem/symbol_repo/pex_inv.sym} 170 -190 0 0 {name=x1}
