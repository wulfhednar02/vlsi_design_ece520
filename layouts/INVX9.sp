* Circuit Extracted by Tanner Research's L-Edit V7.12 / Extract V4.00 ;
* TDB File:  C:\Users\Don\Google Drive\UNM Classes\VLSI Design\Project\Tanner\vlsi_design\layouts\INVX9_v7, Cell:  INVX9
* Extract Definition File:  ON_C5N.ext
* Extract Date and Time:  03/19/2019 - 19:36

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
*       1 = GND (160.499,147)
*       2 = VDD (64.5,281)
*       3 = INVX1 (86.999,221)
*       4 = OUT (174.499,195.5)
*       5 = INVX3 (110.999,223)
*       6 = IN (75.999,220.5)

Cpar1 GND 0 411.6781f
Cpar2 VDD 0 569.02078f
Cpar3 INVX1 0 39.20328f
Cpar4 OUT 0 302.38707f
Cpar5 INVX3 0 112.49626f
Cpar6 IN 0 5.0056642f

M7 OUT INVX3 VDD VDD CMOSP L=0.6u W=14.85u AD=98.01p PD=72.6u AS=218.3175p PS=171.3u 
* M7 DRAIN GATE SOURCE BULK (165.5 218 167.5 267.5) 
M8 OUT INVX3 VDD VDD CMOSP L=0.6u W=14.85u AD=98.01p PD=72.6u AS=218.3175p PS=171.3u 
* M8 DRAIN GATE SOURCE BULK (152.5 218 154.5 267.5) 
M9 OUT INVX3 VDD VDD CMOSP L=0.6u W=14.85u AD=98.01p PD=72.6u AS=218.3175p PS=171.3u 
* M9 DRAIN GATE SOURCE BULK (139.5 218 141.5 267.5) 
M10 OUT INVX3 VDD VDD CMOSP L=0.6u W=14.85u AD=98.01p PD=72.6u AS=218.3175p PS=171.3u 
* M10 DRAIN GATE SOURCE BULK (126.5 218 128.5 267.5) 
M11 INVX3 INVX1 VDD VDD CMOSP L=0.6u W=9.9u AD=32.67p PD=26.4u AS=218.3175p PS=171.3u 
* M11 DRAIN GATE SOURCE BULK (108.5 234.5 110.5 267.5) 
M12 INVX3 INVX1 VDD VDD CMOSP L=0.6u W=9.9u AD=32.67p PD=26.4u AS=218.3175p PS=171.3u 
* M12 DRAIN GATE SOURCE BULK (95.5 234.5 97.5 267.5) 
M13 INVX1 IN VDD VDD CMOSP L=0.6u W=3.3u AD=5.94p PD=10.2u AS=218.3175p PS=171.3u 
* M13 DRAIN GATE SOURCE BULK (79.5 256.5 81.5 267.5) 
M14 INVX1 IN VDD VDD CMOSP L=0.6u W=3.3u AD=5.94p PD=10.2u AS=218.3175p PS=171.3u 
* M14 DRAIN GATE SOURCE BULK (71.5 256.5 73.5 267.5) 
M15 OUT INVX3 GND GND CMOSN L=0.6u W=9u AD=59.4p PD=49.2u AS=99.135p PS=94.8u 
* M15 DRAIN GATE SOURCE BULK (156.5 157.5 158.5 187.5) 
M16 OUT INVX3 GND GND CMOSN L=0.6u W=9u AD=59.4p PD=49.2u AS=99.135p PS=94.8u 
* M16 DRAIN GATE SOURCE BULK (143.5 157.5 145.5 187.5) 
M17 OUT INVX3 GND GND CMOSN L=0.6u W=9u AD=59.4p PD=49.2u AS=99.135p PS=94.8u 
* M17 DRAIN GATE SOURCE BULK (130.5 157.5 132.5 187.5) 
M18 INVX3 INVX1 GND GND CMOSN L=0.6u W=4.5u AD=16.2p PD=16.2u AS=99.135p PS=94.8u 
* M18 DRAIN GATE SOURCE BULK (117 163 119 178) 
M19 INVX3 INVX1 GND GND CMOSN L=0.6u W=4.5u AD=16.2p PD=16.2u AS=99.135p PS=94.8u 
* M19 DRAIN GATE SOURCE BULK (103 163 105 178) 
M20 INVX1 IN GND GND CMOSN L=0.6u W=3u AD=10.35p PD=12.9u AS=99.135p PS=94.8u 
* M20 DRAIN GATE SOURCE BULK (74 167.5 76 177.5) 

* Vsupply VDD 0 5
* Vtest IN 0 PULSE(0 5 0 10n 10n 100n 400n)
* 
* .probe
* 
* .tran 1p 2u

* Total Nodes: 6
* Total Elements: 20
* Extract Elapsed Time: 0 seconds
.END
