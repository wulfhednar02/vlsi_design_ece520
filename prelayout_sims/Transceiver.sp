* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\ibows\Documents\ECE520\Project\Layout\Project_Inverter_v7, Cell:  Transceiver
* Extract Definition File:  ON_C5N.ext
* Extract Date and Time:  03/19/2019 - 20:21

.INCLUDE ON_C5N.modlib
.INCLUDE OUTBUF.sp

* WARNING:  Layers with Unassigned AREA Capacitance.
*   <Substrate>
*   <ChipSubstrate>
* WARNING:  Layers with Unassigned FRINGE Capacitance.
*   <ndiff>
*   <Substrate>
*   <pdiff>
*   <n well wire>
*   <ChipSubstrate>
* WARNING:  Layers with Zero Resistance.
*   <Substrate>
*   <ChipSubstrate>

.subckt TRANSCEIVER TX RX CHANNEL VDD GND
* NODE NAME ALIASES
*       1 = GND (0,-37)
*       1 = U10/GND (30,-36.5)
*       1 = U11/GND (145.5,-38.5)
*       1 = U9/GND (0,-36.5)
*       2 = VDD (0,40)
*       2 = U10/VDD (30,37.5)
*       2 = U11/VDD (145.5,39.5)
*       2 = U9/VDD (0,37.5)
*       3 = U10/Output (141,0.5)
*       3 = U11/Input_N (148.5,-6)
*       4 = RX (172.5,1)
*       4 = U11/Output (168.5,0.5)
*       5 = U11/Input_P (148.5,7)
*       5 = U9/Output (24,0.5)
*       6 = TX (0,62.5)
*       6 = U11/Select (148.5,0.5)
*       7 = CHANNEL (1.5,56)
*       7 = U10/Input (35.5,0.5)
*       7 = U9/Input (0,0.5)

Cpar1 GND 0 91.108496f
Cpar2 VDD 0 282.21856f
Cpar3 U10/Output 0 191.54015f
Cpar4 RX 0 25.890721f
Cpar5 U11/Input_P 0 42.557896f
Cpar6 TX 0 2.9156674f
Cpar7 CHANNEL 0 14.522475f

M8 RX TX U11/Input_P VDD CMOSP L=0.6u W=3u AD=6.75p PD=10.5u AS=9.9p PS=18.6u 
* M8 DRAIN GATE SOURCE BULK (157 10.5 159 20.5) 
M9 VDD CHANNEL U10/Output VDD CMOSP L=0.6u W=8.25u AD=106.425p PD=149.4u AS=90.3375p PS=120.9u 
* M9 DRAIN GATE SOURCE BULK (132 6 134 33.5) 
M10 U10/Output CHANNEL VDD VDD CMOSP L=0.6u W=8.25u AD=90.3375p PD=120.9u AS=106.425p PS=149.4u 
* M10 DRAIN GATE SOURCE BULK (124 6 126 33.5) 
M11 VDD CHANNEL U10/Output VDD CMOSP L=0.6u W=8.25u AD=106.425p PD=149.4u AS=90.3375p PS=120.9u 
* M11 DRAIN GATE SOURCE BULK (116 6 118 33.5) 
M12 U10/Output CHANNEL VDD VDD CMOSP L=0.6u W=8.25u AD=90.3375p PD=120.9u AS=106.425p PS=149.4u 
* M12 DRAIN GATE SOURCE BULK (107.5 6 109.5 33.5) 
M13 VDD CHANNEL U10/Output VDD CMOSP L=0.6u W=8.25u AD=106.425p PD=149.4u AS=90.3375p PS=120.9u 
* M13 DRAIN GATE SOURCE BULK (99.5 6 101.5 33.5) 
M14 U10/Output CHANNEL VDD VDD CMOSP L=0.6u W=8.25u AD=90.3375p PD=120.9u AS=106.425p PS=149.4u 
* M14 DRAIN GATE SOURCE BULK (91.5 6 93.5 33.5) 
M15 VDD CHANNEL U10/Output VDD CMOSP L=0.6u W=8.25u AD=106.425p PD=149.4u AS=90.3375p PS=120.9u 
* M15 DRAIN GATE SOURCE BULK (83.5 6 85.5 33.5) 
M16 U10/Output CHANNEL VDD VDD CMOSP L=0.6u W=8.25u AD=90.3375p PD=120.9u AS=106.425p PS=149.4u 
* M16 DRAIN GATE SOURCE BULK (75.5 6 77.5 33.5) 
M17 VDD CHANNEL U10/Output VDD CMOSP L=0.6u W=8.25u AD=106.425p PD=149.4u AS=90.3375p PS=120.9u 
* M17 DRAIN GATE SOURCE BULK (67.5 6 69.5 33.5) 
M18 U10/Output CHANNEL VDD VDD CMOSP L=0.6u W=8.25u AD=90.3375p PD=120.9u AS=106.425p PS=149.4u 
* M18 DRAIN GATE SOURCE BULK (59.5 6 61.5 33.5) 
M19 VDD CHANNEL U10/Output VDD CMOSP L=0.6u W=8.25u AD=106.425p PD=149.4u AS=90.3375p PS=120.9u 
* M19 DRAIN GATE SOURCE BULK (51.5 6 53.5 33.5) 
M20 U10/Output CHANNEL VDD VDD CMOSP L=0.6u W=8.25u AD=90.3375p PD=120.9u AS=106.425p PS=149.4u 
* M20 DRAIN GATE SOURCE BULK (43.5 6 45.5 33.5) 
M21 U11/Input_P CHANNEL VDD VDD CMOSP L=0.6u W=3u AD=9.9p PD=18.6u AS=106.425p PS=149.4u 
* M21 DRAIN GATE SOURCE BULK (13.5 6.5 15.5 16.5) 
M22 RX TX U10/Output GND CMOSN L=0.6u W=3u AD=6.75p PD=10.5u AS=9.9p PS=18.6u 
* M22 DRAIN GATE SOURCE BULK (157 -20.5 159 -10.5) 
M23 U10/Output CHANNEL GND GND CMOSN L=0.6u W=3u AD=9.9p PD=18.6u AS=25.74p PS=41.1u 
* M23 DRAIN GATE SOURCE BULK (129.5 -16.5 131.5 -6.5) 
M24 GND CHANNEL U11/Input_P GND CMOSN L=0.6u W=6.3u AD=25.74p PD=41.1u AS=11.34p PS=16.2u 
* M24 DRAIN GATE SOURCE BULK (20.5 -27 22.5 -6) 
M25 U11/Input_P CHANNEL GND GND CMOSN L=0.6u W=6.3u AD=11.34p PD=16.2u AS=25.74p PS=41.1u 
* M25 DRAIN GATE SOURCE BULK (12.5 -27 14.5 -6) 
.ends

Vsupply VDD 0 5

Xtrans1 TX1 RX1 channel VDD 0 TRANSCEIVER
Xtrans2 TX2 RX2 channel VDD 0 TRANSCEIVER

Xout1 RX1 RXout1 VDD 0 OUTBUF
Xout2 RX2 RXout2 VDD 0 OUTBUF

* series resistors
Rtx1 channel TX1 100
Rtx2 channel TX2 100

Cout1 RXout1 0 20p
Cout2 RXout2 0 20p

* Input waveforms as stimulus
Vtx1 TX1 0 PULSE(0 5 0 1p 1p 100n 400n)
Vtx2 TX2 0 PULSE(0 5 0 1p 1p 30n 90n)

.tran 1p 2u

.probe

* Total Nodes: 7
* Total Elements: 25
* Extract Elapsed Time: 0 seconds
.END
