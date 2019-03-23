* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\ibows\Documents\ECE520\Project\Layout\Project_Inverter_v7, Cell:  Inverter
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
*       1 = GND (0,-36)
*       2 = VDD (0,37)
*       3 = Input (0,0.5)
*       4 = Output (26,0.5)

Cpar1 GND 0 19.484634f
Cpar2 VDD 0 46.765316f
Cpar3 Input 0 1.2211112f
Cpar4 Output 0 30.775265f

M5 Output Input VDD VDD CMOSP L=0.6u W=6.75u AD=11.1375p PD=16.8u AS=11.1375p PS=16.8u 
* M5 DRAIN GATE SOURCE BULK (13.5 6 15.5 28.5) 
M6 Output Input GND GND CMOSN L=0.6u W=3u AD=4.95p PD=9.3u AS=4.95p PS=9.3u 
* M6 DRAIN GATE SOURCE BULK (13.5 -16 15.5 -6) 

Vdd VDD GND 5
VInput Input 0 PULSE(0 5 0 1p 1p 10n 20n)

.tran 1ps 100n
.plot V(Input) V(Output)


.measure tran T_plh  trig V(Input) val={{0.5*VDD}}         rise=2 targ V(Output) val={{0.5*VDD}}         fall=2
.measure tran T_phl  trig V(Input) val={{0.5*VDD}}         fall=2 targ V(Output) val={{0.5*VDD}}         rise=2
.measure tran T_rise trig V(Output) val={{0.1*VDD}} td=10n rise=1 targ V(Output) val={{0.9*VDD}} td=10n  rise=1
.measure tran T_fall trig V(Output) val={{0.9*VDD}} td=10n fall=1 targ V(Output) val={{0.1*VDD}} td=10n  fall=1

* Total Nodes: 4
* Total Elements: 6
* Extract Elapsed Time: 0 seconds
.END
