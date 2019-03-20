* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\Don\Google Drive\UNM Classes\VLSI Design\Project\Tanner\vlsi_design\layouts\INVX27_v7, Cell:  INVX27
* Extract Definition File:  ON_C5N.ext
* Extract Date and Time:  03/19/2019 - 19:31

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
*       1 = GND (24.999,5.5)
*       2 = VDD (-1.5,139)
*       3 = OUT (151,67.5)
*       4 = IN (-2,60)

Cpar1 GND 0 731.18367f
Cpar2 VDD 0 946.60491f
Cpar3 OUT 0 904.96058f
Cpar4 IN 0 49.33604f

M5 OUT IN VDD VDD CMOSP L=0.6u W=14.85u AD=294.03p PD=217.8u AS=380.5425p PS=283.8u 
* M5 DRAIN GATE SOURCE BULK (145.5 79.5 147.5 129) 
M6 OUT IN VDD VDD CMOSP L=0.6u W=14.85u AD=294.03p PD=217.8u AS=380.5425p PS=283.8u 
* M6 DRAIN GATE SOURCE BULK (132.5 79.5 134.5 129) 
M7 OUT IN VDD VDD CMOSP L=0.6u W=14.85u AD=294.03p PD=217.8u AS=380.5425p PS=283.8u 
* M7 DRAIN GATE SOURCE BULK (119.5 79.5 121.5 129) 
M8 OUT IN VDD VDD CMOSP L=0.6u W=14.85u AD=294.03p PD=217.8u AS=380.5425p PS=283.8u 
* M8 DRAIN GATE SOURCE BULK (106.5 79.5 108.5 129) 
M9 OUT IN VDD VDD CMOSP L=0.6u W=14.85u AD=294.03p PD=217.8u AS=380.5425p PS=283.8u 
* M9 DRAIN GATE SOURCE BULK (93 79.5 95 129) 
M10 OUT IN VDD VDD CMOSP L=0.6u W=14.85u AD=294.03p PD=217.8u AS=380.5425p PS=283.8u 
* M10 DRAIN GATE SOURCE BULK (80 79.5 82 129) 
M11 OUT IN VDD VDD CMOSP L=0.6u W=14.85u AD=294.03p PD=217.8u AS=380.5425p PS=283.8u 
* M11 DRAIN GATE SOURCE BULK (67 79.5 69 129) 
M12 OUT IN VDD VDD CMOSP L=0.6u W=14.85u AD=294.03p PD=217.8u AS=380.5425p PS=283.8u 
* M12 DRAIN GATE SOURCE BULK (54 79.5 56 129) 
M13 OUT IN VDD VDD CMOSP L=0.6u W=14.85u AD=294.03p PD=217.8u AS=380.5425p PS=283.8u 
* M13 DRAIN GATE SOURCE BULK (41 79.5 43 129) 
M14 OUT IN VDD VDD CMOSP L=0.6u W=14.85u AD=294.03p PD=217.8u AS=380.5425p PS=283.8u 
* M14 DRAIN GATE SOURCE BULK (28 79.5 30 129) 
M15 OUT IN VDD VDD CMOSP L=0.6u W=14.85u AD=294.03p PD=217.8u AS=380.5425p PS=283.8u 
* M15 DRAIN GATE SOURCE BULK (15 79.5 17 129) 
M16 OUT IN VDD VDD CMOSP L=0.6u W=14.85u AD=294.03p PD=217.8u AS=380.5425p PS=283.8u 
* M16 DRAIN GATE SOURCE BULK (2 79.5 4 129) 
M17 OUT IN GND GND CMOSN L=0.6u W=9u AD=174.15p PD=146.7u AS=192.51p PS=158.7u 
* M17 DRAIN GATE SOURCE BULK (144.5 19 146.5 49) 
M18 OUT IN GND GND CMOSN L=0.6u W=9u AD=174.15p PD=146.7u AS=192.51p PS=158.7u 
* M18 DRAIN GATE SOURCE BULK (131.5 19 133.5 49) 
M19 OUT IN GND GND CMOSN L=0.6u W=9u AD=174.15p PD=146.7u AS=192.51p PS=158.7u 
* M19 DRAIN GATE SOURCE BULK (118.5 19 120.5 49) 
M20 OUT IN GND GND CMOSN L=0.6u W=9u AD=174.15p PD=146.7u AS=192.51p PS=158.7u 
* M20 DRAIN GATE SOURCE BULK (92 19 94 49) 
M21 OUT IN GND GND CMOSN L=0.6u W=9u AD=174.15p PD=146.7u AS=192.51p PS=158.7u 
* M21 DRAIN GATE SOURCE BULK (79 19 81 49) 
M22 OUT IN GND GND CMOSN L=0.6u W=9u AD=174.15p PD=146.7u AS=192.51p PS=158.7u 
* M22 DRAIN GATE SOURCE BULK (66 19 68 49) 
M23 OUT IN GND GND CMOSN L=0.6u W=9u AD=174.15p PD=146.7u AS=192.51p PS=158.7u 
* M23 DRAIN GATE SOURCE BULK (39.5 19 41.5 49) 
M24 OUT IN GND GND CMOSN L=0.6u W=9u AD=174.15p PD=146.7u AS=192.51p PS=158.7u 
* M24 DRAIN GATE SOURCE BULK (26.5 19 28.5 49) 
M25 OUT IN GND GND CMOSN L=0.6u W=9u AD=174.15p PD=146.7u AS=192.51p PS=158.7u 
* M25 DRAIN GATE SOURCE BULK (13.5 19 15.5 49) 

* Vsupply VDD 0 5
* Vtest IN 0 PULSE(0 5 0 10n 10n 100n 400n)
* 
* .probe
* 
* .tran 1p 2u

* Total Nodes: 4
* Total Elements: 25
* Extract Elapsed Time: 0 seconds
.END
