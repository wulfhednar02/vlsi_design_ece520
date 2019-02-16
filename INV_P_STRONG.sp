.SUBCKT INV_P_STRONG IN OUT VDD GND
.param X=1 * X is drive strength(width multiplier), as in INVX1, INVX4, etc.

* Vm = 3.75
* OUT = ~IN

Mp OUT IN VDD VDD CMOSP L=0.6u W={X*MIN_CHANNEL_WIDTH*P_STRONG_RATIO} PS=8.4u PD=8.4u
Mn OUT IN GND GND CMOSN L=0.6u W={X*MIN_CHANNEL_WIDTH} PS=8.4u PD=8.4u
.ENDS
