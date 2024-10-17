v {xschem version=3.4.6RC file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -20 190 -20 {lab=#net1}
N 190 -70 190 -20 {lab=#net1}
N -240 -70 190 -70 {lab=#net1}
N -240 -70 -240 -40 {lab=#net1}
N -240 20 -240 60 {lab=GND}
N 150 20 190 20 {lab=GND}
N 190 20 190 40 {lab=GND}
N -240 40 190 40 {lab=GND}
N 150 -0 220 -0 {lab=out}
C {ring_oscillator.sym} 0 0 0 0 {name=x1}
C {devices/vsource.sym} -240 -10 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/gnd.sym} -240 60 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 220 0 2 0 {name=p1 sig_type=std_logic lab=out}
C {sky130_fd_pr/corner.sym} 230 50 0 0 {name=CORNER only_toplevel=false corner=tt}
C {devices/code_shown.sym} 0 80 0 0 {name=spice only_toplevel=false value="
 .option wnflag=0
 .option savecurrents
 .control
 save all
 tran 1ps 10ns
 plot out
 op
 .endc"}
