

table6<- read.csv("Data Set 5.csv")
par(mfrow = c(1,3), mar=c(4, 4, 2,1))
#Plotting the scatter plot for Size,KW variables 
plot(table6$Size, table6$KW, xlab ="x" ,ylab = "y" , main="Observed Data")
#plotting the linear,polynomial regression models
model1<- lm(table6$KW~poly(table6$Size,1))
lines(table6$Size, model1$fitted.values, col="Red")

plot(table6$Size, table6$KW, xlab ="x" ,ylab = "y" , main="Observed Data")
model2<- lm(table6$KW~poly(table6$Size,2))
lines(table6$Size, model2$fitted.values, col="Red")

plot(table6$Size, table6$KW, xlab ="x" ,ylab = "y" , main="Observed Data")
model3<- lm(table6$KW~poly(table6$Size,3))
lines(table6$Size, model3$fitted.values, col="Red")
#saving the result
dev.copy(png, file="B4.png")
dev.off()
cat("B4.png has been saved in", getwd())

#accuracy of the three models   
error1 = model1$fitted.values - table6$KW
print("Linear Accuracy= ")
mean(error1^2)


error2 = model2$fitted.values - table6$KW
print("Poly 2 Accuracy= ")
mean(error2^2)


error3 = model3$fitted.values - table6$KW
print("Poly 3 Accuracy= ")
mean(error3^2)






