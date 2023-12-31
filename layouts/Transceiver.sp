* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\Don\Google Drive\UNM Classes\VLSI Design\Project\Tanner\vlsi_design\layouts\Project_Inverter_v7, Cell:  Transceiver
* Extract Definition File:  C:\Users\Don\Google Drive\UNM Classes\VLSI Design\Project\Tanner\vlsi_design\layouts\ON_C5N.ext
* Extract Date and Time:  03/25/2019 - 21:36

.INCLUDE ON_C5N.modlib

* WARNING:  Layers with Unassigned AREA Capacitance.
*   <Substrate>
*   <ChipSubstrate>
* WARNING:  Layers with Unassigned FRINGE Capacitance.
*   <pdiff>
*   <n well wire>
*   <ndiff>
*   <Substrate>
*   <ChipSubstrate>
* WARNING:  Layers with Zero Resistance.
*   <Substrate>
*   <ChipSubstrate>

* NODE NAME ALIASES
*       1 = GND (165.5,-34)
*       1 = U10/GND (284.5,-33.5)
*       1 = U11/GND (400,-35.5)
*       1 = U52/GND (103.5,-33)
*       1 = U58/GND (222.5,-33)
*       1 = U59/GND (195.5,-33)
*       1 = U60/GND (49.5,-33)
*       1 = U61/GND (76.5,-33)
*       1 = U9/GND (165.5,-33.5)
*       2 = VDD (165.5,43)
*       2 = U10/VDD (284.5,40.5)
*       2 = U11/VDD (400,42.5)
*       2 = U52/VDD (103.5,40)
*       2 = U58/VDD (222.5,40)
*       2 = U59/VDD (195.5,40)
*       2 = U60/VDD (49.5,40)
*       2 = U61/VDD (76.5,40)
*       2 = U9/VDD (165.5,40.5)
*       3 = U60/Output (72.5,3.5)
*       3 = U61/Input (80.5,3.5)
*       4 = TX (49.5,4)
*       4 = U60/Input (53.5,3.5)
*       5 = U52/Input (107.5,3.5)
*       5 = U61/Output (99.5,3.5)
*       6 = U11/Select (403,3.5)
*       6 = U52/Output (158,3.5)
*       7 = U59/Input (199.5,3.5)
*       7 = U9/Output (189.5,3.5)
*       8 = U58/Input (226.5,3.5)
*       8 = U59/Output (218.5,3.5)
*       9 = RX (422,4)
*       9 = U11/Output (423,3.5)
*       10 = U10/Output (395,3.5)
*       10 = U11/Input_P (403,10)
*       11 = CHANNEL (49.5,59)
*       11 = U10/Input (290,3.5)
*       11 = U9/Input (165.5,3.5)
*       12 = U11/Input_N (403,-3)
*       12 = U58/Output (277,3.5)

Cpar1 GND 0 190.84021f
Cpar2 VDD 0 531.9986f
Cpar3 U60/Output 0 31.85453f
Cpar4 U52/Input 0 31.85453f
Cpar5 U11/Select 0 232.46458f
Cpar6 U59/Input 0 32.233461f
Cpar7 U58/Input 0 31.85453f
Cpar8 RX 0 25.839408f
Cpar9 U10/Output 0 191.55379f
Cpar10 CHANNEL 0 16.63317f
Cpar11 U11/Input_N 0 240.06431f

M12 U60/Output TX GND GND CMOSN L=0.6u W=3u AD=4.95p PD=9.3u AS=50.49p PS=87.6u 
* M12 DRAIN GATE SOURCE BULK (63 -13 65 -3) 
M13 U52/Input U60/Output GND GND CMOSN L=0.6u W=3u AD=4.95p PD=9.3u AS=50.49p PS=87.6u 
* M13 DRAIN GATE SOURCE BULK (90 -13 92 -3) 
M14 U11/Select U52/Input GND GND CMOSN L=0.6u W=3u AD=36.45p PD=30.3u AS=50.49p PS=87.6u 
* M14 DRAIN GATE SOURCE BULK (117 -13 119 -3) 
M15 GND CHANNEL U59/Input GND CMOSN L=0.6u W=6.3u AD=50.49p PD=87.6u AS=11.34p PS=16.2u 
* M15 DRAIN GATE SOURCE BULK (186 -24 188 -3) 
M16 U59/Input CHANNEL GND GND CMOSN L=0.6u W=6.3u AD=11.34p PD=16.2u AS=50.49p PS=87.6u 
* M16 DRAIN GATE SOURCE BULK (178 -24 180 -3) 
M17 U58/Input U59/Input GND GND CMOSN L=0.6u W=3u AD=4.95p PD=9.3u AS=50.49p PS=87.6u 
* M17 DRAIN GATE SOURCE BULK (209 -13 211 -3) 
M18 RX U11/Select U11/Input_N GND CMOSN L=0.6u W=3u AD=6.75p PD=10.5u AS=41.4p PS=39.6u 
* M18 DRAIN GATE SOURCE BULK (411.5 -17.5 413.5 -7.5) 
M19 U10/Output CHANNEL GND GND CMOSN L=0.6u W=3u AD=4.95p PD=9.3u AS=50.49p PS=87.6u 
* M19 DRAIN GATE SOURCE BULK (384.5 -13.5 386.5 -3.5) 
M20 U11/Input_N U58/Input GND GND CMOSN L=0.6u W=3u AD=41.4p PD=39.6u AS=50.49p PS=87.6u 
* M20 DRAIN GATE SOURCE BULK (236 -13 238 -3) 
M21 U60/Output TX VDD VDD CMOSP L=0.6u W=6.75u AD=11.1375p PD=16.8u AS=162.1125p PS=233.4u 
* M21 DRAIN GATE SOURCE BULK (63 9 65 31.5) 
M22 U52/Input U60/Output VDD VDD CMOSP L=0.6u W=6.75u AD=11.1375p PD=16.8u AS=162.1125p PS=233.4u 
* M22 DRAIN GATE SOURCE BULK (90 9 92 31.5) 
M23 U11/Select U52/Input VDD VDD CMOSP L=0.6u W=6.75u AD=82.0125p PD=37.8u AS=162.1125p PS=233.4u 
* M23 DRAIN GATE SOURCE BULK (117 9 119 31.5) 
M24 U59/Input CHANNEL VDD VDD CMOSP L=0.6u W=3u AD=4.95p PD=9.3u AS=162.1125p PS=233.4u 
* M24 DRAIN GATE SOURCE BULK (179 9.5 181 19.5) 
M25 U58/Input U59/Input VDD VDD CMOSP L=0.6u W=6.75u AD=11.1375p PD=16.8u AS=162.1125p PS=233.4u 
* M25 DRAIN GATE SOURCE BULK (209 9 211 31.5) 
M26 RX U11/Select U10/Output VDD CMOSP L=0.6u W=3u AD=6.75p PD=10.5u AS=95.2875p PS=130.2u 
* M26 DRAIN GATE SOURCE BULK (411.5 13.5 413.5 23.5) 
M27 VDD CHANNEL U10/Output VDD CMOSP L=0.6u W=8.25u AD=162.1125p PD=233.4u AS=95.2875p PS=130.2u 
* M27 DRAIN GATE SOURCE BULK (386.5 9 388.5 36.5) 
M28 U10/Output CHANNEL VDD VDD CMOSP L=0.6u W=8.25u AD=95.2875p PD=130.2u AS=162.1125p PS=233.4u 
* M28 DRAIN GATE SOURCE BULK (378.5 9 380.5 36.5) 
M29 VDD CHANNEL U10/Output VDD CMOSP L=0.6u W=8.25u AD=162.1125p PD=233.4u AS=95.2875p PS=130.2u 
* M29 DRAIN GATE SOURCE BULK (370.5 9 372.5 36.5) 
M30 U10/Output CHANNEL VDD VDD CMOSP L=0.6u W=8.25u AD=95.2875p PD=130.2u AS=162.1125p PS=233.4u 
* M30 DRAIN GATE SOURCE BULK (362 9 364 36.5) 
M31 VDD CHANNEL U10/Output VDD CMOSP L=0.6u W=8.25u AD=162.1125p PD=233.4u AS=95.2875p PS=130.2u 
* M31 DRAIN GATE SOURCE BULK (354 9 356 36.5) 
M32 U10/Output CHANNEL VDD VDD CMOSP L=0.6u W=8.25u AD=95.2875p PD=130.2u AS=162.1125p PS=233.4u 
* M32 DRAIN GATE SOURCE BULK (346 9 348 36.5) 
M33 VDD CHANNEL U10/Output VDD CMOSP L=0.6u W=8.25u AD=162.1125p PD=233.4u AS=95.2875p PS=130.2u 
* M33 DRAIN GATE SOURCE BULK (338 9 340 36.5) 
M34 U10/Output CHANNEL VDD VDD CMOSP L=0.6u W=8.25u AD=95.2875p PD=130.2u AS=162.1125p PS=233.4u 
* M34 DRAIN GATE SOURCE BULK (330 9 332 36.5) 
M35 VDD CHANNEL U10/Output VDD CMOSP L=0.6u W=8.25u AD=162.1125p PD=233.4u AS=95.2875p PS=130.2u 
* M35 DRAIN GATE SOURCE BULK (322 9 324 36.5) 
M36 U10/Output CHANNEL VDD VDD CMOSP L=0.6u W=8.25u AD=95.2875p PD=130.2u AS=162.1125p PS=233.4u 
* M36 DRAIN GATE SOURCE BULK (314 9 316 36.5) 
M37 VDD CHANNEL U10/Output VDD CMOSP L=0.6u W=8.25u AD=162.1125p PD=233.4u AS=95.2875p PS=130.2u 
* M37 DRAIN GATE SOURCE BULK (306 9 308 36.5) 
M38 U10/Output CHANNEL VDD VDD CMOSP L=0.6u W=8.25u AD=95.2875p PD=130.2u AS=162.1125p PS=233.4u 
* M38 DRAIN GATE SOURCE BULK (298 9 300 36.5) 
M39 U11/Input_N U58/Input VDD VDD CMOSP L=0.6u W=6.75u AD=82.0125p PD=37.8u AS=162.1125p PS=233.4u 
* M39 DRAIN GATE SOURCE BULK (236 9 238 31.5) 

* Total Nodes: 12
* Total Elements: 39
* Extract Elapsed Time: 0 seconds
.END
