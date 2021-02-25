##Reading the Data

machine1 <- c(16.03, 16.04, 16.05, 16.05, 16.02, 16.01, 15.96, 15.98, 16.02, 15.99)
machine2 <- c(16.02, 15.97, 15.96, 16.01, 15.99, 16.03, 16.04, 16.02, 16.01, 16.00)

##Calculating Mean
#y1<-mean.machine1
#y2<-mean.machine2
mean.machine1 <- mean(machine1)
mean.machine2 <- mean(machine2)

##Calculating  Variance

variance.machine1 <- var(machine1)
variance.machine2 <- var(machine2)

## Z Factor

z1 <- (machine1 - mean.machine1)/sd(machine1)
z2 <- (machine2 - mean.machine2)/sd(machine2)

SP.Machine <- (((10-1)*variance.machine1)+((10-1)*variance.machine2))/(10+10-2)
SP.Machine <- sqrt(SP.Machine)
#to=(y1-y2)/(sp*sqrt(1/n1+1/n2))
#sp=sqrt(((n1-1)*s1^ 2+(n2-)*s2^ 2)/(n1+n2-2))
t0 = (mean.machine1 -mean.machine2)/ (SP.Machine*(sqrt((1/10) +( 1/10))))

t0.025 <- 2.101 ## Value from the z distribution table

## t0 is 0.79835 which  does not falls under critical region,we accept the null hypothesis
