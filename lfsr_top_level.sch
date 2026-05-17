v {xschem version=3.4.4 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -180 -360 2100 -360 {
lab=CLK}
N 2100 -360 2760 -360 {
lab=CLK}
N -20 -360 -20 -270 {
lab=CLK}
N 320 -360 320 -270 {
lab=CLK}
N 1010 -360 1010 -270 {
lab=CLK}
N 1350 -360 1350 -270 {
lab=CLK}
N 1680 -360 1680 -270 {
lab=CLK}
N 2010 -360 2010 -270 {
lab=CLK}
N 2350 -360 2350 -270 {
lab=CLK}
N 670 -360 670 -270 {
lab=CLK}
N -20 -230 -20 -140 {
lab=RST}
N -180 -140 2740 -140 {
lab=RST}
N 320 -230 320 -140 {
lab=RST}
N 670 -230 670 -140 {
lab=RST}
N 1010 -230 1010 -140 {
lab=RST}
N 1350 -230 1350 -140 {
lab=RST}
N 1680 -230 1680 -140 {
lab=RST}
N 2010 -230 2010 -140 {
lab=RST}
N 2350 -230 2350 -140 {
lab=RST}
N 620 -250 670 -250 {
lab=#net1}
N 970 -250 1010 -250 {
lab=#net2}
N 1310 -250 1350 -250 {
lab=#net3}
N 1650 -250 1680 -250 {
lab=#net4}
N 1980 -250 2010 -250 {
lab=#net5}
N 2310 -250 2350 -250 {
lab=#net6}
N 1980 -250 1980 -200 {
lab=#net5}
N 1980 -200 2710 -200 {
lab=#net5}
N 2710 -250 2710 -200 {
lab=#net5}
N 3010 -270 3060 -270 {
lab=#net7}
N 3060 -250 3060 -190 {
lab=#net8}
N 3360 -270 3410 -270 {
lab=#net9}
N 1310 -270 1320 -270 {
lab=#net10}
N 1650 -270 1660 -270 {
lab=#net8}
N 1660 -270 1660 -190 {
lab=#net8}
N 1320 -270 1320 -180 {
lab=#net10}
N 1320 -180 3410 -180 {
lab=#net10}
N 3410 -250 3410 -180 {
lab=#net10}
N 2650 -250 2680 -250 {
lab=#net11}
N 2680 -270 2680 -250 {
lab=#net11}
N 2680 -270 2710 -270 {
lab=#net11}
N 280 -270 300 -270 {
lab=#net12}
N 300 -270 300 -250 {
lab=#net12}
N 300 -250 320 -250 {
lab=#net12}
N 1660 -190 3060 -190 {
lab=#net8}
N 3710 -270 3710 -20 {
lab=#net13}
N -320 -20 3710 -20 {
lab=#net13}
N -320 -250 -320 -20 {
lab=#net13}
N -320 -250 -20 -250 {
lab=#net13}
C {/home/carlos/CI_FINAL/xor.sym} 2860 -260 0 0 {name=x1}
C {ipin.sym} -180 -360 0 0 {name=p2 lab=CLK
}
C {/home/carlos/CI_FINAL/dff.sym} 130 -250 0 0 {name=FF0}
C {/home/carlos/CI_FINAL/dff.sym} 470 -250 0 0 {name=FF1}
C {/home/carlos/CI_FINAL/dff.sym} 820 -250 0 0 {name=FF2}
C {/home/carlos/CI_FINAL/dff.sym} 1160 -250 0 0 {name=FF3}
C {/home/carlos/CI_FINAL/dff.sym} 1500 -250 0 0 {name=FF4}
C {/home/carlos/CI_FINAL/dff.sym} 1830 -250 0 0 {name=FF5}
C {/home/carlos/CI_FINAL/dff.sym} 2160 -250 0 0 {name=FF6}
C {/home/carlos/CI_FINAL/dff.sym} 2500 -250 0 0 {name=FF7}
C {ipin.sym} -180 -140 0 0 {name=p1 lab=RST}
C {/home/carlos/CI_FINAL/xor.sym} 3210 -260 0 0 {name=x2}
C {/home/carlos/CI_FINAL/xor.sym} 3560 -260 0 0 {name=x11}
C {code.sym} 180 -550 0 0 {name=s1 only_toplevel=false value="
Vvdd VDD GND 1.8 
Vclk CLK GND PULSE(0 1.8 0 100p 100p 5n 10n) 
Vrst RST GND PULSE(1.8 0 1n 100p 100p 15n 1)
.control
tran 100p 200n
run
plot v(clk) v(rst)
.endc
"}
