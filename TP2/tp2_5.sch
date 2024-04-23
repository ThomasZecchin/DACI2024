v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2120 -960 2120 -920 { lab=vbn}
N 2730 -970 2730 -900 { lab=GND}
N 2730 -1090 2730 -1030 { lab=vss}
N 2120 -960 2200 -960 { lab=vbn}
N 2200 -960 2200 -890 { lab=vbn}
N 2160 -890 2200 -890 { lab=vbn}
N 2120 -860 2120 -820 { lab=vss}
N 2530 -890 2570 -890 { lab=vss}
N 2080 -890 2120 -890 { lab=vss}
N 2120 -1240 2120 -1190 { lab=vdd}
N 2800 -970 2800 -900 { lab=vss}
N 2800 -1090 2800 -1030 { lab=vdd}
N 2530 -860 2530 -820 { lab=vss}
N 2200 -890 2250 -890 { lab=vbn}
N 2120 -1240 2290 -1240 { lab=vdd}
N 2120 -990 2120 -960 { lab=vbn}
N 2250 -890 2360 -890 { lab=vbn}
N 2120 -1130 2120 -990 { lab=vbn}
N 2530 -1080 2530 -920 { lab=vout}
N 2530 -1240 2530 -1140 { lab=vdd}
N 2290 -1240 2400 -1240 { lab=vdd}
N 2310 -1070 2310 -1020 { lab=vss}
N 2360 -920 2360 -890 { lab=vbn}
N 2310 -1160 2360 -1160 { lab=#net1}
N 2310 -1160 2310 -1130 { lab=#net1}
N 2360 -1160 2360 -1080 { lab=#net1}
N 2360 -1020 2360 -920 { lab=vbn}
N 2360 -890 2490 -890 { lab=vbn}
N 2400 -1240 2530 -1240 { lab=vdd}
C {isource.sym} 2120 -1160 0 0 {name=Iref value=\{iref\}}
C {vsource.sym} 2730 -1000 0 0 {name=VSS value=\{vss\}}
C {gnd.sym} 2730 -900 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 2730 -1090 1 0 {name=l2 sig_type=std_logic lab=vss}
C {lab_pin.sym} 2570 -890 2 0 {name=l3 sig_type=std_logic lab=vss}
C {lab_pin.sym} 2080 -890 0 0 {name=l4 sig_type=std_logic lab=vss}
C {lab_pin.sym} 2120 -820 3 0 {name=l5 sig_type=std_logic lab=vss}
C {vsource.sym} 2800 -1000 0 0 {name=VDD value=\{vdd\}}
C {lab_pin.sym} 2800 -1090 1 0 {name=l7 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 2800 -900 3 0 {name=l6 sig_type=std_logic lab=vss}
C {vsource.sym} 2310 -1100 0 1 {name=V1 value="SIN(0 \{Vin\} 50Meg) DC 0 AC 1"}
C {lab_pin.sym} 2530 -820 1 1 {name=l10 sig_type=std_logic lab=vss}
C {lab_wire.sym} 2280 -1240 0 0 {name=l21 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 2200 -960 0 0 {name=l23 sig_type=std_logic lab=vbn}
C {netlist_not_shown.sym} 2680 -1270 0 0 {name=simulation only_toplevel=false 
value="

* Parameters
.param vdd = 1.8
.param vss = 0.0
.param iref = 200u
.param wn = 1
.param R = 4.5k
.param Vin = 40m 

.options TEMP = 65.0

* Models
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib TT

* Data to save
.save all
+ @M.XM0.msky130_fd_pr__nfet_01v8[id]
+ @M.XM0.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM0.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM0.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM0.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM0.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM1.msky130_fd_pr__nfet_01v8[id]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM1.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM1.msky130_fd_pr__nfet_01v8[gds]

* Simulation
.control
  ac dec 100 10k 100G
  setplot ac1
  plot vdb(vout) \{vp(vout)*180/PI\}
  write tp2_5_ac.raw

  reset
  tran 0.01n 100n
  plot v(vbn) v(vout)
  write tp2_5_tran.raw
  
  reset
  op
  save all
  print all
  unset filetype
  write tp2_5.raw
.endc

.end
"}
C {launcher.sym} 2540 -1320 0 0 {name=h1
descr=Backannotate
tclcommand="ngspice::annotate"}
C {sky130_fd_pr/nfet_01v8.sym} 2510 -890 0 0 {name=M1
L=0.3
W=\{wn\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 2140 -890 0 1 {name=M0
L=0.3
W=\{wn\}
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 2310 -1020 1 1 {name=l8 sig_type=std_logic lab=vss}
C {capa.sym} 2360 -1050 0 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 2530 -1010 3 0 {name=l11 sig_type=std_logic lab=vout}
C {res.sym} 2530 -1110 0 0 {name=R1
value=\{R\}
footprint=1206
device=resistor
m=1}
C {ngspice_probe.sym} 2530 -1030 0 0 {name=r1}
C {ngspice_probe.sym} 2120 -1030 0 0 {name=r3}
C {ngspice_get_value.sym} 2540 -940 0 0 {name=r5 node=i(@M.XM1.msky130_fd_pr__nfet_01v8[id])
descr="Id="}
C {ngspice_get_value.sym} 2060 -950 0 0 {name=r2 node=i(@M.XM0.msky130_fd_pr__nfet_01v8[id])
descr="Id="}
C {ngspice_get_value.sym} 2550 -830 0 0 {name=r4 node=v(@M.XM1.msky130_fd_pr__nfet_01v8[vdsat])
descr="Vdsat="}
C {ngspice_get_value.sym} 2550 -800 0 0 {name=r6 node=@M.XM1.msky130_fd_pr__nfet_01v8[gm]
descr="gm="}
C {ngspice_get_value.sym} 2620 -800 0 0 {name=r7 node=@M.XM1.msky130_fd_pr__nfet_01v8[gds]
descr="gds="}
C {ngspice_get_value.sym} 2620 -830 0 0 {name=r8 node=v(@M.XM1.msky130_fd_pr__nfet_01v8[vth])
descr="Vth="}
