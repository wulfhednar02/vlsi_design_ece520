* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\ibows\Documents\ECE520\Project\Layout\Project_Inverter_v7, Cell:  Inverter_N_Strong
* Extract Definition File:  ON_C5N.ext
* Extract Date and Time:  03/09/2019 - 21:13

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
*       3 = Output (29,0.5)
*       4 = Input (0,0.5)

Cpar1 GND 0 58.883204f
Cpar2 VDD 0 26.184691f
Cpar3 Output 0 31.154195f
Cpar4 Input 0 1.9999854f

M5 Output Input VDD VDD CMOSP L=0.6u W=3u AD=4.95p PD=9.3u AS=4.95p PS=9.3u 
* M5 DRAIN GATE SOURCE BULK (13.5 6.5 15.5 16.5) 
M6 GND Input Output GND CMOSN L=0.6u W=6.3u AD=20.79p PD=31.8u AS=11.34p PS=16.2u 
* M6 DRAIN GATE SOURCE BULK (20.5 -27 22.5 -6) 
M7 Output Input GND GND CMOSN L=0.6u W=6.3u AD=11.34p PD=16.2u AS=20.79p PS=31.8u 
* M7 DRAIN GATE SOURCE BULK (12.5 -27 14.5 -6) 

Vdd VDD GND 5
VInput Input 0 PULSE(0 5 0 1p 1p 10n 20n)

.tran 1ps 100n
.plot V(Input) V(Output)


.measure tran T_plh  trig V(Input) val={{0.5*VDD}}         rise=2 targ V(Output) val={{0.5*VDD}}         fall=2
.measure tran T_phl  trig V(Input) val={{0.5*VDD}}         fall=2 targ V(Output) val={{0.5*VDD}}         rise=2
.measure tran T_rise trig V(Output) val={{0.1*VDD}} td=10n rise=1 targ V(Output) val={{0.9*VDD}} td=10n  rise=1
.measure tran T_fall trig V(Output) val={{0.9*VDD}} td=10n fall=1 targ V(Output) val={{0.1*VDD}} td=10n  fall=1

* Total Nodes: 4
* Total Elements: 7
* Extract Elapsed Time: 0 seconds
.END
