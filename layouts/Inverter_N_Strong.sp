* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\Don\Google Drive\UNM Classes\VLSI Design\Project\Tanner\vlsi_design\layouts\Inverter_N_Strong_v7, Cell:  Inverter_N_Strong
* Extract Definition File:  C:\Users\Don\Google Drive\UNM Classes\VLSI Design\Project\Tanner\vlsi_design\layouts\ON_C5N.ext
* Extract Date and Time:  03/25/2019 - 21:39

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
*       1 = GND (0,-36.5)
*       2 = VDD (0,37.5)
*       3 = Output (24,0.5)
*       4 = Input (0,0.5)

Cpar1 GND 0 58.883204f
Cpar2 VDD 0 23.338891f
Cpar3 Output 0 31.102882f

M4 GND Input Output GND CMOSN L=0.6u W=6.3u AD=20.79p PD=31.8u AS=11.34p PS=16.2u 
* M4 DRAIN GATE SOURCE BULK (20.5 -27 22.5 -6) 
M5 Output Input GND GND CMOSN L=0.6u W=6.3u AD=11.34p PD=16.2u AS=20.79p PS=31.8u 
* M5 DRAIN GATE SOURCE BULK (12.5 -27 14.5 -6) 
M6 Output Input VDD VDD CMOSP L=0.6u W=3u AD=4.95p PD=9.3u AS=4.95p PS=9.3u 
* M6 DRAIN GATE SOURCE BULK (13.5 6.5 15.5 16.5) 

* Total Nodes: 4
* Total Elements: 6
* Extract Elapsed Time: 0 seconds
.END
