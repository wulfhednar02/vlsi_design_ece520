* for some dumbass reason .include can't be on the first line?
.INCLUDE "ON_C5N.modlib"

.options threads=1 * contrary to what this says it auto-threads to whatever number of cores you have
.options maxmsg=0
.options compat=pspice * for expression syntax

.param N_STRONG_RATIO=4.1 * exact=4.126
.param MIN_CHANNEL_WIDTH=3u * dont change this, corresponds to 10-lambda per MOSIS design rule suggestions

.INCLUDE "INV_N_STRONG.sp"

* VDD voltage
Vsupply VDD 0 5

Xuut test_in test_out VDD 0 INV_N_STRONG
Ctestload test_out 0 1p

* Input waveforms as stimulus
Vtx1 test_in 0 PULSE(0 5 0 0n 0n 100n 400n)

.measure tran T_n_strong_plh  trig V(test_in)  val={{2.5}} rise=2 targ V(test_out) val={{2.5}} rise=2
.measure tran T_n_strong_phl  trig V(test_in)  val={{2.5}} fall=2 targ V(test_out) val={{2.5}} fall=2
.measure tran T_n_strong_rise trig V(test_out) val={{0.5}} rise=1 targ V(test_out) val={{4.5}} rise=1
.measure tran T_n_strong_fall trig V(test_out) val={{4.5}} fall=1 targ V(test_out) val={{0.5}} fall=1

.plot test_in test_out

.power VDD

.tran 10ps 2u
