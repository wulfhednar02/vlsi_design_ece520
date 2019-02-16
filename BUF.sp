.SUBCKT BUF IN OUT VDD GND
.param X=3 * X is drive strength of the final stage, as in BUFX3, BUFX9, etc.

* OUT = IN (with higher drive strength)

Xinv1 IN in_n  VDD GND INV(X={X/3}) * assumed 1:3 ratio for inverter chaining
Xinv2 in_n OUT VDD GND INV(X=X)

.ends
