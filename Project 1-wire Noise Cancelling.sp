* REALLY!?!?!?!?
.INCLUDE ON_C5N.modlib

.SUBCKT CMOS_N_STRONG D G SN SP
M1 D G SN 0   CMOSN L=1u W=11.139u AD=4.05p AS=4.05p PD=8.4u PS=8.4u
M2 D G SP Vdd CMOSP L=1u W=2.7u    AD=4.05p AS=4.05p PD=8.4u PS=8.4u
.ENDS CMOS_N_STRONG

.SUBCKT CMOS_P_STRONG D G SN SP
M1 D G SN 0   CMOSN L=1u W=2.7u     AD=4.05p AS=4.05p PD=8.4u PS=8.4u
M2 D G SP Vdd CMOSP L=1u W=119.474u AD=4.05p AS=4.05p PD=8.4u PS=8.4u
.ENDS CMOS_P_STRONG

.SUBCKT CMOS_BALANCED D G SN SP
M1 D G SN 0   CMOSN L=1u W=2.7u   AD=4.05p AS=4.05p PD=8.4u PS=8.4u
M2 D G SP Vdd CMOSP L=1u W=6.069u AD=4.05p AS=4.05p PD=8.4u PS=8.4u
.ENDS CMOS_BALANCED

.SUBCKT CMOS_SWITCH D G SN SP 
M1 D G SN 0   CMOSN L=1u W=2.7u AD=4.05p AS=4.05p PD=8.4u PS=8.4u
M2 D G SP Vdd CMOSP L=1u W=2.7u AD=4.05p AS=4.05p PD=8.4u PS=8.4u
.ENDS CMOS_SWITCH

*I1 0 1Wire SIN(0 24.5m 1Meg 0 0 0 0)

V1 Vdd 0 5

V3 TX1 0 PULSE(0 5 0 200n 200n 2500n 5000n)
V4 TX2 0 PULSE(0 5 0 200n 200n 500n 1200n)

XTX1 1Wire TX1 0 Vdd CMOS_BALANCED
XTX2 1Wire TX2 0 Vdd CMOS_BALANCED

*R1 1Wire TX1OUT 100
*R2 1Wire TX2OUT 100

X1 PSTR_OUT 1Wire 0 Vdd CMOS_P_STRONG
X2 NSTR_OUT 1Wire 0 Vdd CMOS_N_STRONG
X3 BALN_OUT 1Wire 0 Vdd CMOS_BALANCED

X4 PSTR_NSTR_OUT PSTR_OUT 0 Vdd CMOS_N_STRONG
X5 NSTR_PSTR_OUT NSTR_OUT 0 Vdd CMOS_P_STRONG

X6 PSTR_BAL_OUT PSTR_NSTR_OUT BALN_OUT NSTR_OUT CMOS_SWITCH
X7 NSTR_BAL_OUT NSTR_PSTR_OUT PSTR_OUT BALN_OUT CMOS_SWITCH

X8 RX1_INV TX1 PSTR_BAL_OUT NSTR_BAL_OUT CMOS_SWITCH
X9 RX1 RX1_INV 0 Vdd CMOS_BALANCED


.tran 100n 25u
.probe
.end
