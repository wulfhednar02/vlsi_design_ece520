* for some dumbass reason .include can't be on the first line?
.INCLUDE "ON_C5N.modlib"

.options threads=1 * contrary to what this says it auto-threads to whatever number of cores you have
.options maxmsg=0
.options compat=pspice * for expression syntax

.param BALANCED_RATIO=2.2 * exact=2.248
.param MIN_CHANNEL_WIDTH=3u * dont change this, corresponds to 10-lambda per MOSIS design rule suggestions

.INCLUDE "2TMUX.sp"

* VDD voltage
Vsupply VDD 0 5

Xuut2 0 VDD test_in_g test_out_g VDD 0 2TMUX
Rtest test_in_g test_in 100000

* Inputs are reversed compared to an inverter
Xuut 0 VDD test_in test_out VDD 0 2TMUX
Ctestload test_out 0 0.1p

* Input waveforms as stimulus
Vtx1 test_in 0 PULSE(0 5 0 0n 0n 100n 400n)

.measure tran T_mux_plh   trig V(test_in)    val={{0.5*VDD}} rise=2 targ V(test_out)  val={{0.5*VDD}} rise=2
.measure tran T_mux_phl   trig V(test_in)    val={{0.5*VDD}} fall=2 targ V(test_out)  val={{0.5*VDD}} fall=2
.measure tran T_mux_rise  trig V(test_out)   val={{0.1*VDD}} rise=1 targ V(test_out)  val={{0.9*VDD}} rise=1
.measure tran T_mux_fall  trig V(test_out)   val={{0.9*VDD}} fall=1 targ V(test_out)  val={{0.1*VDD}} fall=1
.measure tran T_n_strong_g trig V(test_in_g) val={{0.1*VDD}} rise=1 targ V(test_in_g) val={{0.9*VDD}} rise=1

.plot test_in test_out

.power VDD

.tran 10ps 2u
