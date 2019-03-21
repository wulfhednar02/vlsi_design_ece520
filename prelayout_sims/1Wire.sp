* for some dumbass reason .include can't be on the first line?
.INCLUDE "ON_C5N.modlib"

.options threads=1 * contrary to what this says it auto-threads to whatever number of cores you have
.options maxmsg=0
.options compat=pspice * for expression syntax

.param P_STRONG_RATIO=44  * exact=44.25
.param N_STRONG_RATIO=4.1 * exact=4.126
.param BALANCED_RATIO=2.2 * exact=2.248
.param MIN_CHANNEL_WIDTH=3u * dont change this, corresponds to 10-lambda per MOSIS design rule suggestions

.param P_SUPER_STRONG_RATIO=1000
.param N_SUPER_STRONG_RATIO=454

.INCLUDE "INV.sp"
.INCLUDE "INV_N_STRONG.sp"
.INCLUDE "INV_P_STRONG.sp"
.INCLUDE "BUF.sp"
.INCLUDE "2TMUX.sp"

.INCLUDE "INV_N_SUPER_STRONG.sp"
.INCLUDE "INV_P_SUPER_STRONG.sp"

* VDD voltage
Vsupply VDD 0 5

* Noise model coupled onto the channel
*I1 	channel 0 SINE(0 30m 100Meg 0 0 0 0)

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

************************************

.subckt TRANSCEIVER_NOISE_CANCEL TX RX CHANNEL VDD GND

X1 CHANNEL BALN_OUT VDD GND INV
X2 CHANNEL P_OUT VDD GND INV_P_SUPER_STRONG
X3 CHANNEL N_OUT VDD GND INV_N_SUPER_STRONG

* Low Side
*  ps       ns    gate drain
X4 BALN_OUT N_OUT N_BAL N_BAL VDD GND 2TMUX

* High Side
*   ps    ns    gate drain
X5 P_OUT BALN_OUT P_BAL P_BAL VDD GND 2TMUX

* MUX
*   ps   ns    gate drain
X6 N_BAL P_BAL TX   RX_INV VDD GND 2TMUX

* Inverter / Buffer
Xrxinv1 RX_INV rxbufin VDD GND INV(X=3)
Xrxinv2 rxbufin RX VDD GND BUF(X=27)

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
Vtx1 TX1 0 PULSE(0 5 0 10n 10n 100n 400n)
Vtx2 TX2 0 PULSE(0 5 0 10n 10n 30n 90n)

.measure tran T_rx_plh  trig V(TX1) val={{0.5*VDD}}         rise=2 targ V(RX2) val={{0.5*VDD}}         rise=2
.measure tran T_rx_phl  trig V(TX1) val={{0.5*VDD}}         fall=2 targ V(RX2) val={{0.5*VDD}}         fall=2
.measure tran T_rx_rise trig V(RX2) val={{0.1*VDD}} td=0.2u rise=1 targ V(RX2) val={{0.9*VDD}} td=0.2u rise=1
.measure tran T_rx_fall trig V(RX2) val={{0.9*VDD}} td=0.2u fall=1 targ V(RX2) val={{0.1*VDD}} td=0.2u fall=1


* EXPERIMENTAL TRANSCEIVER ****************************************************
* transceiver 3
Xtrans3 TX1 RX3 channel VDD 0 TRANSCEIVER_NOISE_CANCEL
* transceiver 4
Xtrans4 TX2 RX4 channel VDD 0 TRANSCEIVER_NOISE_CANCEL

Crx3load RX3 0 20p
Crx4load RX4 0 20p

.measure tran T_rx_plh2  trig V(TX1) val={{0.5*VDD}}         rise=2 targ V(RX4) val={{0.5*VDD}}         rise=2
.measure tran T_rx_phl2  trig V(TX1) val={{0.5*VDD}}         fall=2 targ V(RX4) val={{0.5*VDD}}         fall=2
.measure tran T_rx_rise2 trig V(RX4) val={{0.1*VDD}} td=0.2u rise=1 targ V(RX4) val={{0.9*VDD}} td=0.2u rise=1
.measure tran T_rx_fall2 trig V(RX4) val={{0.9*VDD}} td=0.2u fall=1 targ V(RX4) val={{0.1*VDD}} td=0.2u fall=1

.probe

.tran 100ps 2u

.end
