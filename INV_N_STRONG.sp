.SUBCKT INV_N_STRONG IN OUT VDD GND

* Vm = 3.75
* OUT = ~IN

Mp OUT IN VDD VDD CMOSP L=0.6u W={MIN_CHANNEL_WIDTH} PS=8.4u PD=8.4u
Mn OUT IN GND GND CMOSN L=0.6u W={MIN_CHANNEL_WIDTH*N_STRONG_RATIO} PS=8.4u PD=8.4u
.ENDS
