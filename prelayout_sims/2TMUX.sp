.SUBCKT 2TMUX P_IN N_IN SEL OUT VDD GND

* if (sel==0) out=P_IN
* else out=N_IN

Mp OUT SEL P_IN VDD CMOSP 
+L=0.6u 
+W=BALANCED_RATIO*MIN_CHANNEL_WIDTH
+AS=BALANCED_RATIO*MIN_CHANNEL_WIDTH*1.5u
+AD=BALANCED_RATIO*MIN_CHANNEL_WIDTH*1.5u
+PS=2.4u+(BALANCED_RATIO*MIN_CHANNEL_WIDTH*2)
+PD=2.4u+(BALANCED_RATIO*MIN_CHANNEL_WIDTH*2)

Mn OUT SEL N_IN GND CMOSN
+L=0.6u
+W=MIN_CHANNEL_WIDTH
+AS=MIN_CHANNEL_WIDTH*1.5u
+AD=MIN_CHANNEL_WIDTH*1.5u
+PS=2.4u+(MIN_CHANNEL_WIDTH*2)
+PD=2.4u+(MIN_CHANNEL_WIDTH*2)

.ENDS
