* for some dumbass reason .include can't be on the first line?
.INCLUDE "ON_C5N.modlib"

.options threads=1 * contrary to what this says it auto-threads to whatever number of cores you have
.options maxmsg=0
.options compat=pspice * for expression syntax

.param BALANCED_RATIO=2.2 * exact=2.248
.param N_STRONG_RATIO=4.1 * exact=4.126
.param P_STRONG_RATIO=44  * exact=44.25
.param MIN_CHANNEL_WIDTH=3u * dont change this, corresponds to 10-lambda per MOSIS design rule suggestions

.INCLUDE "INV.sp"
.INCLUDE "BUF.sp"
.INCLUDE "INV_N_STRONG.sp"
.INCLUDE "INV_P_STRONG.sp"

* Supply voltage
Vsupply VDD 0 DC 5v
* Input voltage sweep
Vtest test_in 0
.DC Vtest 0v 5v 0.001

Xuut1 test_in test_out_INV VDD 0 INV
Xuut2 test_in test_out_BUF VDD 0 BUF(X=3)
Xuut3 test_in test_out_INV_N_STRONG VDD 0 INV_N_STRONG
Xuut4 test_in test_out_INV_P_STRONG VDD 0 INV_P_STRONG

.plot test_in test_out_INV test_out_BUF test_out_INV_N_STRONG test_out_INV_P_STRONG

.op
