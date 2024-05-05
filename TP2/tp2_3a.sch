v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 60 300 60 360 { lab=GND}
N 60 180 60 240 { lab=vss}
N 320 60 320 160 { lab=vbias_c}
N 320 -60 320 0 { lab=vdd}
N 320 -60 510 -60 { lab=vdd}
N 510 -60 510 0 { lab=vdd}
N 510 60 510 160 { lab=#net1}
N 510 430 510 530 { lab=vss}
N 320 530 510 530 { lab=vss}
N 320 430 320 530 { lab=vss}
N 240 400 320 400 { lab=vss}
N 510 530 590 530 { lab=vss}
N 150 300 150 360 { lab=vss}
N 150 180 150 240 { lab=vdd}
N 360 400 470 400 { lab=vbias_n}
N 320 320 380 320 { lab=vbias_n}
N 380 320 380 400 { lab=vbias_n}
N 700 60 700 160 {
lab=#net2}
N 700 -60 700 0 {
lab=vdd}
N 510 -60 700 -60 {
lab=vdd}
N 700 430 700 530 {
lab=vss}
N 590 530 700 530 {
lab=vss}
N 700 400 750 400 {
lab=vss}
N 700 530 750 530 {
lab=vss}
N 700 -60 880 -60 {
lab=vdd}
N 750 530 880 530 {
lab=vss}
N 700 270 700 370 {
lab=#net3}
N 320 320 320 370 {
lab=vbias_n}
N 700 240 750 240 {
lab=vss}
N 510 270 510 370 {
lab=#net4}
N 510 160 510 210 {
lab=#net1}
N 700 160 700 210 {
lab=#net2}
N 410 160 410 240 {
lab=vbias_c}
N 320 160 410 160 {
lab=vbias_c}
N 320 160 320 210 {
lab=vbias_c}
N 360 240 470 240 {
lab=vbias_c}
N 320 270 320 320 {
lab=vbias_n}
N 640 240 660 240 {
lab=vbias_c}
N 810 400 840 400 {
lab=vbias_n}
N 640 400 660 400 {
lab=vbias_n}
N 880 400 930 400 {
lab=vss}
N 880 430 880 530 {
lab=vss}
N 240 240 320 240 {
lab=vss}
N 510 240 580 240 {
lab=vss}
N 750 240 760 240 {
lab=vss}
N 820 240 840 240 {
lab=vbias_c}
N 880 240 940 240 {
lab=vss}
N 880 270 880 370 {
lab=#net5}
N 880 -60 880 0 {
lab=vdd}
N 880 60 880 210 {
lab=#net6}
N 510 400 570 400 {
lab=vss}
N 750 400 760 400 {
lab=vss}
N 930 400 940 400 {
lab=vss}
C {netlist_not_shown.sym} 50 -60 0 0 {name=simulation only_toplevel=false 
value="

* Parameters
.param vdd = 1.8
.param vss = 0.0
.param V1 = 0.6
.param V2 = 0.9
.param V3 = 1.2
.param iref = 200u
.param Lsc = 0.15
.param lc = 0.9
.param Wsc = 10
.param wc = 70
.options TEMPS = 27.0

* Models
.lib ~/skywater/skywater-pdk/libraries/sky130_fd_pr_ngspice/latest/models/corners/sky130.lib TT

* Data to save
.save all
+ @M.XM0.msky130_fd_pr__nfet_01v8[id]
+ @M.XM0.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM0.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM0.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM0.msky130_fd_pr__nfet_01v8[w]
+ @M.XM0.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM0.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM1.msky130_fd_pr__nfet_01v8[id]
+ @M.XM1.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM1.msky130_fd_pr__nfet_01v8[w]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM1.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM2.msky130_fd_pr__nfet_01v8[id]
+ @M.XM2.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM2.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM2.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM2.msky130_fd_pr__nfet_01v8[w]
+ @M.XM2.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM2.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM3.msky130_fd_pr__nfet_01v8[id]
+ @M.XM3.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM3.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM3.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM3.msky130_fd_pr__nfet_01v8[w]
+ @M.XM3.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM3.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM4.msky130_fd_pr__nfet_01v8[id]
+ @M.XM4.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM4.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM4.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM4.msky130_fd_pr__nfet_01v8[w]
+ @M.XM4.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM4.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM5.msky130_fd_pr__nfet_01v8[id]
+ @M.XM5.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM5.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM5.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM5.msky130_fd_pr__nfet_01v8[w]
+ @M.XM5.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM5.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM6.msky130_fd_pr__nfet_01v8[id]
+ @M.XM6.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM6.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM6.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM6.msky130_fd_pr__nfet_01v8[w]
+ @M.XM6.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM6.msky130_fd_pr__nfet_01v8[vdsat]
+ @M.XM7.msky130_fd_pr__nfet_01v8[id]
+ @M.XM7.msky130_fd_pr__nfet_01v8[gm]
+ @M.XM7.msky130_fd_pr__nfet_01v8[vds]
+ @M.XM7.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XM7.msky130_fd_pr__nfet_01v8[w]
+ @M.XM7.msky130_fd_pr__nfet_01v8[vth]
+ @M.XM7.msky130_fd_pr__nfet_01v8[vdsat]


* Simulation
.control
  op
  save all
  unset filetype
  write tp2_3a.raw

.endc

.end
"}
C {sky130_fd_pr/nfet_01v8.sym} 340 400 0 1 {name=M0
L=\{Lsc\}
W=\{Wsc\}
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
C {sky130_fd_pr/nfet_01v8.sym} 490 400 0 0 {name=M2
L=\{Lsc\}
W=\{Wsc\}
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
C {isource.sym} 320 30 0 0 {name=IREF value=DC\{iref\}}
C {vsource.sym} 60 270 0 0 {name=VSS value=DC\{vss\}}
C {gnd.sym} 60 360 0 0 {name=l1 lab=GND}
C {vsource.sym} 150 270 0 0 {name=VDD value=DC\{vdd\}}
C {lab_pin.sym} 60 180 1 0 {name=l2 sig_type=std_logic lab=vss}
C {lab_pin.sym} 150 180 1 0 {name=l3 sig_type=std_logic lab=vdd
}
C {lab_pin.sym} 150 360 3 0 {name=l4 sig_type=std_logic lab=vss}
C {lab_wire.sym} 420 -60 0 0 {name=l5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 430 400 1 0 {name=l6 sig_type=std_logic lab=vbias_n}
C {lab_wire.sym} 430 530 0 0 {name=l7 sig_type=std_logic lab=vss}
C {launcher.sym} 670 -140 0 0 {name=h1
descr=Anotar
 tclcommand="ngspice::annotate"}
C {ngspice_probe.sym} 510 290 0 0 {name=r67}
C {ngspice_probe.sym} 450 -60 0 0 {name=r2}
C {ngspice_probe.sym} 380 320 0 0 {name=r3}
C {ngspice_probe.sym} 880 120 0 0 {name=r4}
C {ngspice_get_value.sym} 540 320 0 0 {name=r5 node=i(@M.XM2.msky130_fd_pr__nfet_01v8[id])
descr="Id_V1="}
C {ngspice_get_value.sym} 260 350 0 0 {name=r8 node=i(@M.XM1.msky130_fd_pr__nfet_01v8[id])
descr="Id_REF="}
C {sky130_fd_pr/nfet_01v8.sym} 490 240 0 0 {name=M3
L=\{lc\}
W=\{wc\}
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
C {vsource.sym} 510 30 0 0 {name=V1 value=DC\{V1\}}
C {vsource.sym} 700 30 0 0 {name=V2 value=DC\{V2\}}
C {sky130_fd_pr/nfet_01v8.sym} 680 400 0 0 {name=M4
L=\{Lsc\}
W=\{Wsc\}
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
C {vsource.sym} 880 30 0 0 {name=V3 value=DC\{V3\}}
C {ngspice_probe.sym} 700 290 0 0 {name=r99}
C {ngspice_probe.sym} 880 290 0 0 {name=r88}
C {ngspice_get_value.sym} 730 320 0 0 {name=r9 node=i(@M.XM4.msky130_fd_pr__nfet_01v8[id])
descr="Id_V2="}
C {ngspice_get_value.sym} 910 320 0 0 {name=r10 node=i(@M.XM6.msky130_fd_pr__nfet_01v8[id])
descr="Id_V3="}
C {ngspice_get_value.sym} 540 360 0 0 {name=r11 node=v(@M.XM2.msky130_fd_pr__nfet_01v8[vth])
descr="Vth2="}
C {sky130_fd_pr/nfet_01v8.sym} 340 240 0 1 {name=M1
L=\{lc\}
W=\{wc\}
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
C {sky130_fd_pr/nfet_01v8.sym} 860 400 0 0 {name=M6
L=\{Lsc\}
W=\{Wsc\}
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
C {sky130_fd_pr/nfet_01v8.sym} 860 240 0 0 {name=M7
L=\{lc\}
W=\{wc\}
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
C {sky130_fd_pr/nfet_01v8.sym} 680 240 0 0 {name=M5
L=\{lc\}
W=\{wc\}
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
C {ngspice_probe.sym} 510 130 0 0 {name=r12}
C {ngspice_probe.sym} 700 120 0 0 {name=r13}
C {ngspice_probe.sym} 320 100 0 0 {name=r15}
C {ngspice_get_value.sym} 730 360 0 0 {name=r1 node=v(@M.XM4.msky130_fd_pr__nfet_01v8[vth])
descr="Vth4="}
C {ngspice_probe.sym} 700 120 0 0 {name=r6}
C {ngspice_get_value.sym} 730 170 0 0 {name=r7 node=v(@M.XM5.msky130_fd_pr__nfet_01v8[vth])
descr="Vth5="}
C {ngspice_get_value.sym} 540 170 0 0 {name=r14 node=v(@M.XM3.msky130_fd_pr__nfet_01v8[vth])
descr="Vth3="}
C {lab_wire.sym} 440 240 1 0 {name=l8 sig_type=std_logic lab=vbias_c
}
C {lab_wire.sym} 640 240 1 0 {name=l9 sig_type=std_logic lab=vbias_c
}
C {lab_wire.sym} 820 240 1 0 {name=l10 sig_type=std_logic lab=vbias_c
}
C {lab_wire.sym} 640 400 1 0 {name=l11 sig_type=std_logic lab=vbias_n}
C {lab_wire.sym} 810 400 1 0 {name=l12 sig_type=std_logic lab=vbias_n}
C {lab_wire.sym} 240 240 0 0 {name=l13 sig_type=std_logic lab=vss}
C {lab_wire.sym} 580 240 0 1 {name=l14 sig_type=std_logic lab=vss}
C {lab_wire.sym} 760 240 0 1 {name=l15 sig_type=std_logic lab=vss}
C {lab_wire.sym} 940 240 0 1 {name=l16 sig_type=std_logic lab=vss}
C {ngspice_get_value.sym} 930 170 0 0 {name=r16 node=v(@M.XM7.msky130_fd_pr__nfet_01v8[vth])
descr="Vth7="}
C {lab_wire.sym} 240 400 0 0 {name=l17 sig_type=std_logic lab=vss}
C {lab_wire.sym} 570 400 0 1 {name=l18 sig_type=std_logic lab=vss}
C {lab_wire.sym} 760 400 0 1 {name=l19 sig_type=std_logic lab=vss}
C {lab_wire.sym} 940 400 0 1 {name=l20 sig_type=std_logic lab=vss}
C {ngspice_get_value.sym} 910 360 0 0 {name=r17 node=v(@M.XM6.msky130_fd_pr__nfet_01v8[vth])
descr="Vth6="}
