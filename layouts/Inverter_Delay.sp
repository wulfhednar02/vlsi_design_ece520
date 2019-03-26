* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\Don\Google Drive\UNM Classes\VLSI Design\Project\Tanner\vlsi_design\layouts\Inverter_Delay_v7, Cell:  Inverter_Delay
* Extract Definition File:  C:\Users\Don\Google Drive\UNM Classes\VLSI Design\Project\Tanner\vlsi_design\layouts\ON_C5N.ext
* Extract Date and Time:  03/25/2019 - 21:38

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
*       3 = Output (54.5,0.5)
*       4 = Input (4,0.5)

Cpar1 GND 0 20.664627f
Cpar2 VDD 0 54.700261f
Cpar3 Output 0 227.81594f

M4 Output Input VDD VDD CMOSP L=0.6u W=6.75u AD=82.0125p PD=37.8u AS=11.1375p PS=16.8u 
* M4 DRAIN GATE SOURCE BULK (13.5 6 15.5 28.5) 
M5 Output Input GND GND CMOSN L=0.6u W=3u AD=36.45p PD=30.3u AS=4.95p PS=9.3u 
* M5 DRAIN GATE SOURCE BULK (13.5 -16 15.5 -6) 

* Total Nodes: 4
* Total Elements: 5
* Extract Elapsed Time: 0 seconds
.END
