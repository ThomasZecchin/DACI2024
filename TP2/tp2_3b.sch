v {xschem version=3.0.0 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 60 300 60 360 { lab=GND}
N 60 180 60 240 { lab=vss}
N 620 50 620 150 { lab=vbias_n}
N 620 -70 620 -10 { lab=vdd}
N 620 -70 810 -70 { lab=vdd}
N 810 -70 810 -10 { lab=vdd}
N 810 50 810 150 { lab=#net1}
N 810 420 810 520 { lab=vss}
N 620 520 810 520 { lab=vss}
N 620 420 620 520 { lab=vss}
N 540 390 620 390 { lab=vss}
N 540 390 540 520 { lab=vss}
N 540 520 620 520 { lab=vss}
N 810 390 890 390 { lab=vss}
N 890 390 890 510 { lab=vss}
N 890 510 890 520 { lab=vss}
N 810 520 890 520 { lab=vss}
N 150 300 150 360 { lab=vss}
N 150 180 150 240 { lab=vdd}
N 660 390 770 390 { lab=vbias_n}
N 620 310 620 360 {
lab=#net2}
N 810 260 810 360 {
lab=#net3}
N 810 150 810 200 {
lab=#net1}
N 620 150 620 200 {
lab=vbias_n}
N 660 230 770 230 {
lab=vbias_c}
N 620 260 620 310 {
lab=#net2}
N 540 230 620 230 {
lab=vss}
N 810 230 880 230 {
lab=vss}
N 370 -70 370 -10 {
lab=vdd}
N 370 50 370 80 {
lab=#net4}
N 370 140 370 200 {
lab=vbias_c}
N 370 260 370 360 {
lab=#net5}
N 370 420 370 520 {
lab=vss}
N 370 340 430 340 {
lab=#net5}
N 430 340 430 390 {
lab=#net5}
N 410 390 430 390 {
lab=#net5}
N 410 230 430 230 {
lab=#net4}
N 430 110 430 230 {
lab=#net4}
N 410 110 430 110 {
lab=#net4}
N 370 70 430 70 {
lab=#net4}
N 430 70 430 110 {
lab=#net4}
N 260 110 370 110 {
lab=vss}
N 260 110 260 520 {
lab=vss}
N 260 520 370 520 {
lab=vss}
N 260 390 370 390 {
lab=vss}
N 260 230 370 230 {
lab=vss}
C {netlist_not_shown.sym} 50 -60 0 0 {name=simulation only_toplevel=false 
value="

* Parameters
.param vdd = 1.8
.param vss = 0.0
.param V3 = 1.2
.param iref = 200u
.param L0246 = 0.15
.param lc = 0.9
.param ld = 0.9
.param W0246 = 5
.param wc = 70
.param wd = 20
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
+ @M.XMD.msky130_fd_pr__nfet_01v8[id]
+ @M.XMD.msky130_fd_pr__nfet_01v8[gm]
+ @M.XMD.msky130_fd_pr__nfet_01v8[vds]
+ @M.XMD.msky130_fd_pr__nfet_01v8[vgs]
+ @M.XMD.msky130_fd_pr__nfet_01v8[w]
+ @M.XMD.msky130_fd_pr__nfet_01v8[vth]
+ @M.XMD.msky130_fd_pr__nfet_01v8[vdsat]


* Simulation
.control
  op
  save all
  unset filetype
  write tp2_3b.raw

.endc

.end
"}
C {sky130_fd_pr/nfet_01v8.sym} 640 390 0 1 {name=M2
L=\{L0246\}
W=\{W0246\}
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
C {sky130_fd_pr/nfet_01v8.sym} 790 390 0 0 {name=M4
L=\{L0246\}
W=\{W0246\}
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
C {isource.sym} 620 20 0 0 {name=IREF value=DC\{iref\}}
C {vsource.sym} 60 270 0 0 {name=VSS value=DC\{vss\}}
C {gnd.sym} 60 360 0 0 {name=l1 lab=GND}
C {vsource.sym} 150 270 0 0 {name=VDD value=DC\{vdd\}}
C {lab_pin.sym} 60 180 1 0 {name=l2 sig_type=std_logic lab=vss}
C {lab_pin.sym} 150 180 1 0 {name=l3 sig_type=std_logic lab=vdd
}
C {lab_pin.sym} 150 360 3 0 {name=l4 sig_type=std_logic lab=vss}
C {lab_wire.sym} 720 -70 0 0 {name=l5 sig_type=std_logic lab=vdd}
C {lab_wire.sym} 730 390 1 0 {name=l6 sig_type=std_logic lab=vbias_n}
C {lab_wire.sym} 730 520 1 0 {name=l7 sig_type=std_logic lab=vss}
C {launcher.sym} 670 -140 0 0 {name=h1
descr=Anotar
 tclcommand="ngspice::annotate"}
C {ngspice_probe.sym} 810 300 0 0 {name=r67}
C {ngspice_probe.sym} 750 -70 0 0 {name=r2}
C {ngspice_probe.sym} 620 300 0 0 {name=r3}
C {ngspice_get_value.sym} 830 330 0 0 {name=r5 node=i(@M.XM4.msky130_fd_pr__nfet_01v8[id])
descr="Id_V3="}
C {ngspice_get_value.sym} 560 340 0 0 {name=r8 node=i(@M.XM2.msky130_fd_pr__nfet_01v8[id])
descr="Id_REF="}
C {sky130_fd_pr/nfet_01v8.sym} 790 230 0 0 {name=M5
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
C {vsource.sym} 810 20 0 0 {name=V1 value=DC\{V3\}}
C {ngspice_get_value.sym} 900 460 0 0 {name=r11 node=v(@M.XM4.msky130_fd_pr__nfet_01v8[vth])
descr="Vth4="}
C {sky130_fd_pr/nfet_01v8.sym} 640 230 0 1 {name=M3
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
C {ngspice_probe.sym} 810 130 0 0 {name=r12}
C {ngspice_probe.sym} 620 90 0 0 {name=r15}
C {ngspice_get_value.sym} 840 160 0 0 {name=r14 node=v(@M.XM5.msky130_fd_pr__nfet_01v8[vth])
descr="Vth5="}
C {lab_wire.sym} 740 230 1 0 {name=l8 sig_type=std_logic lab=vbias_c
}
C {lab_wire.sym} 540 230 0 0 {name=l13 sig_type=std_logic lab=vss}
C {lab_wire.sym} 880 230 0 1 {name=l14 sig_type=std_logic lab=vss}
C {isource.sym} 370 20 0 0 {name=IREF1 value=DC\{iref\}}
C {lab_wire.sym} 620 120 2 0 {name=l9 sig_type=std_logic lab=vbias_n}
C {lab_wire.sym} 370 -70 0 1 {name=l10 sig_type=std_logic lab=vdd}
C {sky130_fd_pr/nfet_01v8.sym} 390 110 0 1 {name=M1
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
C {sky130_fd_pr/nfet_01v8.sym} 390 230 0 1 {name=M0
L=\{ld\}
W=\{wd\}
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
C {sky130_fd_pr/nfet_01v8.sym} 390 390 0 1 {name=MD
L=\{ld\}
W=\{wd\}
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
C {lab_wire.sym} 370 520 2 0 {name=l11 sig_type=std_logic lab=vss}
C {lab_wire.sym} 370 180 0 0 {name=l12 sig_type=std_logic lab=vbias_c
}
C {ngspice_probe.sym} 370 180 0 0 {name=r1}
C {ngspice_probe.sym} 370 60 0 0 {name=r4}
C {ngspice_probe.sym} 370 310 0 0 {name=r6}
C {ngspice_probe.sym} 680 230 0 0 {name=r7}
C {ngspice_probe.sym} 680 390 0 0 {name=r9}
