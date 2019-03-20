* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\ibows\Documents\ECE520\Project\Layout\Project_Inverter_v7, Cell:  2TMUX
* Extract Definition File:  ON_C5N.ext
* Extract Date and Time:  03/11/2019 - 22:52

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
*       3 = Output (28,0.5)
*       4 = Select (0,0.5)
*       5 = Input_N (0,-6)
*       6 = Input_P (0,7)

Cpar1 GND 0 9.746266f
Cpar2 VDD 0 15.306556f
Cpar3 Output 0 25.890721f
Cpar4 Select 0 1.0035892f
Cpar5 Input_N 0 9.5229702f
Cpar6 Input_P 0 9.5477202f

M7 Output Select Input_P VDD CMOSP L=0.6u W=3u AD=6.75p PD=10.5u AS=4.95p PS=9.3u 
* M7 DRAIN GATE SOURCE BULK (11.5 10.5 13.5 20.5) 
M8 Output Select Input_N GND CMOSN L=0.6u W=3u AD=6.75p PD=10.5u AS=4.95p PS=9.3u 
* M8 DRAIN GATE SOURCE BULK (11.5 -20.5 13.5 -10.5) 

Vdd VDD GND 5
Vn Input_N GND PULSE(0 5 0 1p 1p 5n 10n)
Vp Input_P GND PULSE(0 5 0 1p 1p 8n 16n)

Vinput SELECT GND PULSE(0 5 0 1p 1p 20n 40n)

.tran 1p 100n
.plot V(SELECT) V(output) V(Input_N) V(Input_P)

* Total Nodes: 6
* Total Elements: 8
* Extract Elapsed Time: 0 seconds
.END
