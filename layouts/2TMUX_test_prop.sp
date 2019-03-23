* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\ibows\Documents\ECE520\Project\Layout\Project_Inverter_v7, Cell:  2TMUX
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
*       1 = GND (0,-38.5)
*       2 = VDD (0,39.5)
*       3 = Input_N (3,-6)
*       4 = Output (23,0.5)
*       5 = Input_P (3,7)
*       6 = Select (3,0.5)

Cpar1 GND 0 9.746266f
Cpar2 VDD 0 13.283806f
Cpar3 Input_N 0 9.4921821f
Cpar4 Output 0 25.839408f
Cpar5 Input_P 0 9.5169321f
Cpar6 Select 0 0.9728011f

M7 Output Select Input_P VDD CMOSP L=0.6u W=3u AD=6.75p PD=10.5u AS=4.95p PS=9.3u 
* M7 DRAIN GATE SOURCE BULK (11.5 10.5 13.5 20.5) 
M8 Output Select Input_N GND CMOSN L=0.6u W=3u AD=6.75p PD=10.5u AS=4.95p PS=9.3u 
* M8 DRAIN GATE SOURCE BULK (11.5 -20.5 13.5 -10.5) 

Vdd VDD GND 5
Vin_n Input_N GND 5
Vin_p Input_P GND 0
Vsel Select 0 PULSE(0 5 0 1p 1p 10n 20n)

.tran 1ps 100n
.plot V(Select) V(Output)


.measure tran T_phl  trig V(Select) val={{0.5*VDD}}        fall=2 targ V(Output) val={{0.5*VDD}}         fall=2
.measure tran T_plh  trig V(Select) val={{0.5*VDD}}        rise=2 targ V(Output) val={{0.5*VDD}}         rise=2
.measure tran T_rise trig V(Output) val={{0.1*VDD}} td=10n rise=1 targ V(Output) val={{0.9*VDD}} td=10n  rise=1
.measure tran T_fall trig V(Output) val={{0.9*VDD}} td=10n fall=1 targ V(Output) val={{0.1*VDD}} td=10n  fall=1

* Total Nodes: 6
* Total Elements: 8
* Extract Elapsed Time: 0 seconds
.END
