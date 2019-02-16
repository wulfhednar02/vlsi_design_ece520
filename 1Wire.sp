* for some dumbass reason .include can't be on the first line?
.INCLUDE "ON_C5N.modlib"

.options threads=1 * contrary to what this says it auto-threads to whatever number of cores you have
.options maxmsg=0
.options compat=pspice * for expression syntax

.param P_STRONG_RATIO=44  * exact=44.25
.param N_STRONG_RATIO=4.1 * exact=4.126
.param BALANCED_RATIO=2.2 * exact=2.248
.param MIN_CHANNEL_WIDTH=3u * dont change this, corresponds to 10-lambda per MOSIS design rule suggestions

.INCLUDE "INV.sp"
.INCLUDE "INV_N_STRONG.sp"
.INCLUDE "INV_P_STRONG.sp"
.INCLUDE "BUF.sp"
.INCLUDE "2TMUX.sp"

* VDD voltage
Vsupply VDD 0 5

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
Xrxmux lowDetect highDetect TX rxmuxout VDD GND 2TMUX
Xrxinvout rxmuxout rxbufin VDD GND INV(X=3)
Xrxbuf1 rxbufin RX VDD GND BUF(X=27)

.ends

.subckt TRANSCEIVER_NOISE_CANCEL TX_IN TX_OUT RX CHANNEL VDD GND

XTX TX_IN TX_OUT VDD GND INV

X1 CHANNEL PSTR_OUT VDD GND INV_P_STRONG
X2 CHANNEL NSTR_OUT VDD GND INV_N_STRONG
X3 CHANNEL BALN_OUT VDD GND INV

X4 PSTR_OUT PSTR_NSTR_OUT VDD GND INV_N_STRONG
X5 NSTR_OUT NSTR_PSTR_OUT VDD GND INV_P_STRONG

*  ps       ns       gate          drain
X6 NSTR_OUT BALN_OUT PSTR_NSTR_OUT PSTR_BAL_OUT VDD GND 2TMUX
X7 BALN_OUT PSTR_OUT NSTR_PSTR_OUT NSTR_BAL_OUT VDD GND 2TMUX

*  ps           ns           gate drain
X8 NSTR_BAL_OUT PSTR_BAL_OUT TX_IN   RX_INV VDD GND 2TMUX

Xrxinvout RX_INV rxbufin VDD GND INV(X=3)
Xrxbuf1 rxbufin RX VDD GND BUF(X=27)

.ends
* NORMAL TRANSCEIVER **********************************************************
* transceiver 1
Xtrans1 TX1 RX1 channel VDD 0 TRANSCEIVER
* transceiver 2
Xtrans2 TX2 RX2 channel VDD 0 TRANSCEIVER

* series resistors
Rtx1 channel TX1 100
Rtx2 channel TX2 100

* pad, etc. loads on receiver output
Crx1load RX1 0 20p
Crx2load RX2 0 20p

* Input waveforms as stimulus
Vtx1 TX1 0 PULSE(0 5 0 0n 0n 100n 400n)
Vtx2 TX2 0 PULSE(0 5 0 0n 0n 30n 100n)

* Noise model coupled onto the channel
* V4 	NOISE 0 SINE(2.5 2 60MEG 0 0 0 0)
* R3 	NOISE channel 100

.measure tran T_rx_plh trig V(TX1) val={{2.5}} rise=2 targ V(RX2) val={{2.5}} rise=2
.measure tran T_rx_phl trig V(TX1) val={{2.5}} fall=2 targ V(RX2) val={{2.5}} fall=2
.measure tran T_rx_rise trig V(RX2) val={{.5}} td=0.2u rise=1 targ V(RX2) val={{4.5}} td=0.2u rise=1
.measure tran T_rx_fall trig V(RX2) val={{4.5}} td=0.2u fall=1 targ V(RX2) val={{.5}} td=0.2u fall=1

.plot TX1 RX2
.plot TX2 RX1
.plot channel


* EXPERIMENTAL TRANSCEIVER ****************************************************
* transceiver 3
Xtrans3 TX3 TX3CHANNEL RX3 channel2 VDD 0 TRANSCEIVER_NOISE_CANCEL
* transceiver 4
Xtrans4 TX4 TX4CHANNEL RX4 channel2 VDD 0 TRANSCEIVER_NOISE_CANCEL

Rtx3 channel2 TX3CHANNEL 100
Rtx4 channel2 TX4CHANNEL 100

Crx3load RX3 0 20p
Crx4load RX4 0 20p

* Input waveforms as stimulus
Vtx3 TX3 0 PULSE(0 5 0 0n 0n 100n 400n)
Vtx4 TX4 0 PULSE(0 5 0 0n 0n 30n 100n)

.plot TX3 RX4
.plot TX4 RX3
.plot channel2

.power VDD

.tran 10ps 2u

.end
