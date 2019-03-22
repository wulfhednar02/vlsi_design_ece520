.SUBCKT INV_P_STRONG IN OUT VDD GND

* Vm = 3.75
* OUT = ~IN

Mp OUT IN VDD VDD CMOSP 
+L=0.6u 
+W=P_STRONG_RATIO*MIN_CHANNEL_WIDTH
+AS=P_STRONG_RATIO*MIN_CHANNEL_WIDTH*1.5u
+AD=P_STRONG_RATIO*MIN_CHANNEL_WIDTH*1.5u
+PS=2.4u+(P_STRONG_RATIO*MIN_CHANNEL_WIDTH*2)
+PD=2.4u+(P_STRONG_RATIO*MIN_CHANNEL_WIDTH*2)

Mn OUT IN GND GND CMOSN
+L=0.6u
+W=MIN_CHANNEL_WIDTH
+AS=MIN_CHANNEL_WIDTH*1.5u
+AD=MIN_CHANNEL_WIDTH*1.5u
+PS=2.4u+(MIN_CHANNEL_WIDTH*2)
+PD=2.4u+(MIN_CHANNEL_WIDTH*2)

.ENDS