* for some dumbass reason .include can't be on the first line?
.INCLUDE "ON_C5N.modlib"

.options threads=1 * contrary to what this says it auto-threads to whatever number of cores you have
.options maxmsg=0
.options compat=pspice * for expression syntax

.param P_STRONG_RATIO=44  * exact=44.25
.param N_STRONG_RATIO=4.1 * exact=4.126
.param BALANCED_RATIO=2.2 * exact=2.248
.param MIN_CHANNEL_WIDTH=2.7u * dont change this

.INCLUDE "INV.sp"
.INCLUDE "INV_N_STRONG.sp"
.INCLUDE "INV_P_STRONG.sp"
.INCLUDE "BUF.sp"
.INCLUDE "2TMUX.sp"

* VDD voltage
Vsupply VDD 0 5
* series resistors
Rtx1 channel TX1 100
Rtx2 channel TX2 100

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

.subckt TRANSCEIVER TX RX CHANNEL VDD GND

Xlowvm  CHANNEL lowDetect  VDD GND INV_N_STRONG
Xhighvm CHANNEL highDetect VDD GND INV_P_STRONG
Xrx1mux lowDetect highDetect TX rx1muxout VDD GND 2TMUX
Xrx1invout rx1muxout rx1bufin VDD GND INV(X=3)
Xrx1buf1 rx1bufin RX VDD GND BUF(X=27)

.ends

* transceiver 1
Xtrans1 TX1 RX1 channel VDD 0 TRANSCEIVER
* transceiver 2
Xtrans2 TX2 RX2 channel VDD 0 TRANSCEIVER

* pad, etc. loads on receiver output
Crx1load RX1 0 20p
Crx2load RX2 0 20p

* Input waveforms as stimulus
Vtx1 TX1 0 PULSE(0 5 0 1n 1n 1000n 4000n)
Vtx2 TX2 0 PULSE(0 5 0 1n 1n 30n 100n)

* Noise model coupled onto the channel
* V4 	NOISE 0 SINE(2.5 2 60MEG 0 0 0 0)
* R3 	NOISE channel 100


* .plot channel
.plot RX1 TX2
.plot RX2 TX1

.power VDD

.tran 100ps 10u

.end
