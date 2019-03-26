* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\Don\Google Drive\UNM Classes\VLSI Design\Project\Tanner\vlsi_design\layouts\Project_Inverter_v7, Cell:  2TMUX
* Extract Definition File:  C:\Users\Don\Google Drive\UNM Classes\VLSI Design\Project\Tanner\vlsi_design\layouts\ON_C5N.ext
* Extract Date and Time:  03/25/2019 - 21:35

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

M6 Output Select Input_N GND CMOSN L=0.6u W=3u AD=6.75p PD=10.5u AS=4.95p PS=9.3u 
* M6 DRAIN GATE SOURCE BULK (11.5 -20.5 13.5 -10.5) 
M7 Output Select Input_P VDD CMOSP L=0.6u W=3u AD=6.75p PD=10.5u AS=4.95p PS=9.3u 
* M7 DRAIN GATE SOURCE BULK (11.5 10.5 13.5 20.5) 

* Total Nodes: 6
* Total Elements: 7
* Extract Elapsed Time: 0 seconds
.END
