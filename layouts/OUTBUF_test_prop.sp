
.INCLUDE "ON_C5N.modlib"
.INCLUDE "OUTBUF.SP"

* VDD voltage
Vsupply VDD 0 5

Xuut test_in test_out VDD 0 OUTBUF
Ctestload test_out 0 20p

Vtx1 test_in 0 PULSE(0 5 0 0n 0n 25n 50n)

.measure tran T_outbuf_plh  trig V(test_in)  val={{0.5*VDD}}  rise=2 targ V(test_out)  val={{0.5*VDD}} fall=2
.measure tran T_outbuf_phl  trig V(test_in)  val={{0.5*VDD}}  fall=2 targ V(test_out)  val={{0.5*VDD}} rise=2
.measure tran T_outbuf_rise trig V(test_out) val={{0.1*VDD}}  rise=1 targ V(test_out)  val={{0.9*VDD}} rise=1
.measure tran T_outbuf_fall trig V(test_out) val={{0.9*VDD}}  fall=1 targ V(test_out)  val={{0.1*VDD}} fall=1

.plot test_in test_out
.probe

.power VDD

.tran 1p 250n
