.SUBCKT INV_P_STRONG IN OUT
.param X=1 * X is drive strength(width multiplier), as in INVX1, INVX4, etc.

* Vm = 3.75
* OUT = ~IN

Mp OUT IN Vdd Vdd CMOSP L=0.6u W={{X * MIN_CHANNEL_WIDTH * P_STRONG_RATIO}}
Mn OUT IN GND GND CMOSN L=0.6u W={{X * MIN_CHANNEL_WIDTH}}
.ENDS
