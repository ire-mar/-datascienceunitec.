m1<-c(16.85,16.4,17.21,16.35,16.52,17.04,16.96,17.15,16.59,16.57)
m2<-c(16.62,16.75,17.37,17.12,16.98,16.87,17.34,17.02,17.08,17.27)
#calculate mean

mean.m1<-mean(m1)
mean.m2<-mean(m2)


#calculate variance
var.m1<-var(m1)
var.m2<-var(m2)

## S Factor

s1<-(m1-mean.m1)/sd(m1)
s2<-(m2-mean.m2)/sd(m2)

