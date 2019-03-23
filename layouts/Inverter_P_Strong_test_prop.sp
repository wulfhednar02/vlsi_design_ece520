* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\ibows\Documents\ECE520\Project\Layout\Project_Inverter_v7, Cell:  Inverter_P_Strong
* Extract Definition File:  ON_C5N.ext
* Extract Date and Time:  03/09/2019 - 20:54

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
*       3 = Output (66,0.5)
*       4 = Input (0,0.5)

Cpar1 GND 0 20.835641f
Cpar2 VDD 0 148.80749f
Cpar3 Output 0 94.580037f
Cpar4 Input 0 7.1091749f

M5 VDD Input Output VDD CMOSP L=0.6u W=8.25u AD=56.925p PD=79.8u AS=44.55p PS=60.3u 
* M5 DRAIN GATE SOURCE BULK (53.5 6 55.5 33.5) 
M6 Output Input VDD VDD CMOSP L=0.6u W=8.25u AD=44.55p PD=60.3u AS=56.925p PS=79.8u 
* M6 DRAIN GATE SOURCE BULK (45.5 6 47.5 33.5) 
M7 VDD Input Output VDD CMOSP L=0.6u W=8.25u AD=56.925p PD=79.8u AS=44.55p PS=60.3u 
* M7 DRAIN GATE SOURCE BULK (37.5 6 39.5 33.5) 
M8 Output Input VDD VDD CMOSP L=0.6u W=8.25u AD=44.55p PD=60.3u AS=56.925p PS=79.8u 
* M8 DRAIN GATE SOURCE BULK (29.5 6 31.5 33.5) 
M9 VDD Input Output VDD CMOSP L=0.6u W=8.25u AD=56.925p PD=79.8u AS=44.55p PS=60.3u 
* M9 DRAIN GATE SOURCE BULK (21.5 6 23.5 33.5) 
M10 Output Input VDD VDD CMOSP L=0.6u W=8.25u AD=44.55p PD=60.3u AS=56.925p PS=79.8u 
* M10 DRAIN GATE SOURCE BULK (13.5 6 15.5 33.5) 
M11 Output Input GND GND CMOSN L=3.6u W=3u AD=4.95p PD=9.3u AS=4.95p PS=9.3u 
* M11 DRAIN GATE SOURCE BULK (35.5 -16.5 47.5 -6.5) 

Vdd VDD GND 5
VInput Input 0 PULSE(0 5 0 1p 1p 10n 20n)

.tran 1ps 100n
.plot V(Input) V(Output)


.measure tran T_phl  trig V(Input) val={{0.5*VDD}}         rise=2 targ V(Output) val={{0.5*VDD}}         fall=2
.measure tran T_plh  trig V(Input) val={{0.5*VDD}}         fall=2 targ V(Output) val={{0.5*VDD}}         rise=2
.measure tran T_rise trig V(Output) val={{0.1*VDD}} td=10n rise=1 targ V(Output) val={{0.9*VDD}} td=10n  rise=1
.measure tran T_fall trig V(Output) val={{0.9*VDD}} td=10n fall=1 targ V(Output) val={{0.1*VDD}} td=10n  fall=1

* Total Nodes: 4
* Total Elements: 11
* Extract Elapsed Time: 0 seconds
.END
