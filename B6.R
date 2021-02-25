## Null Hypothesis : IQ = 100 | IQ != 100

alpha.value <- 0.01
mean.participant <- 110
avg.iq <- 100
sd.iq <- 10

## Z is calculated as +/- 2.58

Z0 <- (110-100)/(10/sqrt(30))
##Z0 is 5.477226
##Result: Reject the Null Hypothesis.
##Conclusion: Medication significantly affect the intelligence Z = 5.477, p < 0.01.

##Confidence Interval

L = 110 - (2.58 * (10 /sqrt(30)))
U = 110 + (2.58 * (10 /sqrt(30)))

##110 +/- 4.7104
##L is 105.2896 and U is 114.7104