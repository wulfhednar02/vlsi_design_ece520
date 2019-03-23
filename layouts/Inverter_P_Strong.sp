* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\ibows\Documents\ECE520\Project\Layout\Project_Inverter_v7, Cell:  Inverter_P_Strong
* Extract Definition File:  ON_C5N.ext
* Extract Date and Time:  03/23/2019 - 11:20

.INCLUDE ON_C5N.modlib

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

* NODE NAME ALIASES
*       1 = GND (0,-36.5)
*       2 = VDD (0,37.5)
*       3 = Output (110.5,0.5)
*       4 = Input (5.5,0.5)

Cpar1 GND 0 22.47908f
Cpar2 VDD 0 245.67962f
Cpar3 Output 0 181.89832f
Cpar4 Input 0 11.435182f

M5 VDD Input Output VDD CMOSP L=0.6u W=8.25u AD=101.475p PD=140.1u AS=90.3375p PS=120.9u 
* M5 DRAIN GATE SOURCE BULK (102 6 104 33.5) 
M6 Output Input VDD VDD CMOSP L=0.6u W=8.25u AD=90.3375p PD=120.9u AS=101.475p PS=140.1u 
* M6 DRAIN GATE SOURCE BULK (94 6 96 33.5) 
M7 VDD Input Output VDD CMOSP L=0.6u W=8.25u AD=101.475p PD=140.1u AS=90.3375p PS=120.9u 
* M7 DRAIN GATE SOURCE BULK (86 6 88 33.5) 
M8 Output Input VDD VDD CMOSP L=0.6u W=8.25u AD=90.3375p PD=120.9u AS=101.475p PS=140.1u 
* M8 DRAIN GATE SOURCE BULK (77.5 6 79.5 33.5) 
M9 VDD Input Output VDD CMOSP L=0.6u W=8.25u AD=101.475p PD=140.1u AS=90.3375p PS=120.9u 
* M9 DRAIN GATE SOURCE BULK (69.5 6 71.5 33.5) 
M10 Output Input VDD VDD CMOSP L=0.6u W=8.25u AD=90.3375p PD=120.9u AS=101.475p PS=140.1u 
* M10 DRAIN GATE SOURCE BULK (61.5 6 63.5 33.5) 
M11 VDD Input Output VDD CMOSP L=0.6u W=8.25u AD=101.475p PD=140.1u AS=90.3375p PS=120.9u 
* M11 DRAIN GATE SOURCE BULK (53.5 6 55.5 33.5) 
M12 Output Input VDD VDD CMOSP L=0.6u W=8.25u AD=90.3375p PD=120.9u AS=101.475p PS=140.1u 
* M12 DRAIN GATE SOURCE BULK (45.5 6 47.5 33.5) 
M13 VDD Input Output VDD CMOSP L=0.6u W=8.25u AD=101.475p PD=140.1u AS=90.3375p PS=120.9u 
* M13 DRAIN GATE SOURCE BULK (37.5 6 39.5 33.5) 
M14 Output Input VDD VDD CMOSP L=0.6u W=8.25u AD=90.3375p PD=120.9u AS=101.475p PS=140.1u 
* M14 DRAIN GATE SOURCE BULK (29.5 6 31.5 33.5) 
M15 VDD Input Output VDD CMOSP L=0.6u W=8.25u AD=101.475p PD=140.1u AS=90.3375p PS=120.9u 
* M15 DRAIN GATE SOURCE BULK (21.5 6 23.5 33.5) 
M16 Output Input VDD VDD CMOSP L=0.6u W=8.25u AD=90.3375p PD=120.9u AS=101.475p PS=140.1u 
* M16 DRAIN GATE SOURCE BULK (13.5 6 15.5 33.5) 
M17 Output Input GND GND CMOSN L=0.6u W=3u AD=4.95p PD=9.3u AS=4.95p PS=9.3u 
* M17 DRAIN GATE SOURCE BULK (100 -16.5 102 -6.5) 

* Total Nodes: 4
* Total Elements: 17
* Extract Elapsed Time: 0 seconds
.END
