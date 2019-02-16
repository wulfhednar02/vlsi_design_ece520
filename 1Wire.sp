* for some dumbass reason .include can't be on the first line?
.INCLUDE "ON_C5N.modlib"
.INCLUDE "INV.sp"
.INCLUDE "INV_N_STRONG.sp"
.INCLUDE "INV_P_STRONG.sp"
.INCLUDE "BUF.sp"
.INCLUDE "2TMUX.sp"

.param P_STRONG_RATIO=44  * 44.25
.param N_STRONG_RATIO=4.1 * 4.126
.param BALANCED_RATIO=2.2 * 2.248
.param MIN_CHANNEL_WIDTH=0.9u

* Vdd voltage
Vdd VDD GND 5
* series resistors
Rtx1 1Wire TX1 100
Rtx2 1Wire TX2 100

* NOTES
* transistor DRAIN GATE SOURCE BULK 
*    L=channel length
*    W=channel width
*    (optional below, but will result in _slightly_ lower accuracy)
*    AD=area of drain
*    AS=area of source
*    PD=perimeter of drain
*    PS=perimeter of source
*    M=replication?

* transceiver 1

M2 	VDD 1Wire N006 VDD CMOSP L=0.6u W=9.45u
M3 	GND 1Wire N006 GND CMOSN L=0.6u W=2.7u
M14 	VDD 1Wire N001 VDD CMOSP L=0.6u W=2.7u
M15 	GND 1Wire N001 GND CMOSN L=0.6u W=9.45u

Xrx1mux N001 N006 TX1 RX1MUXOUT VDD GND 2TMUX
Xrx1invout RX1MUXOUT RX1BUFIN VDD GND INV(X=4)
Xrx1buf RX1BUFIN RX1 VDD GND BUF(X=64)

* transceiver 2
M5 	VDD 1Wire N005 VDD CMOSP L=0.6u W=9.45u
M6 	GND 1Wire N005 GND CMOSN L=0.6u W=2.7u
M7 	VDD 1Wire N004 VDD CMOSP L=0.6u W=2.7u
M8 	GND 1Wire N004 GND CMOSN L=0.6u W=9.45u

Xrx2mux N004 N005 TX2 RX2MUXOUT VDD GND 2TMUX
Xrx2invout RX2MUXOUT RX2BUFIN VDD GND INV(X=4)
Xrx2buf RX2BUFIN RX2 VDD GND BUF(X=64)

* pad, etc. loads on receiver output
Crx1load RX1 GND 10p
Crx2load RX2 GND 10p

* Input waveforms as stimulus
Vtx1 TX1 GND PULSE(0 5 0 1n 1n 1000n 4000n)
Vtx2 TX2 GND PULSE(0 5 0 1n 1n 30n 100n)

* Noise model coupled onto the 1Wire channel
* V4 	NOISE GND SINE(2.5 2 60MEG 0 0 0 0)
* R3 	NOISE 1Wire 100


.plot TX1 RX2
.plot TX2 RX1

.power Vdd

.tran 100ps 10u

.end
