
##sepal length and width

##scatter plot for width and lenght of sepal

table5 <- read.csv("Data Set 4.csv")
plot(table5$Sepal.Length, table5$Sepal.Width, xlab="Sepal length", ylab="Sepal width")
model<-lm(Sepal.Width ~ Sepal.Length, data=table5)
lines(table5$Sepal.Length,model$fitted.values)

##scatter plot for species setosa
setosa <-  subset(table5, Species == "setosa")
plot(setosa$Sepal.Length, setosa$Sepal.Width,  xlab="Sepal length", ylab="Sepal width")
##abline(lm(Sepal.Width ~ Sepal.Length, data=setosa)$coefficients, col="black")
model1<-lm(Sepal.Width ~ Sepal.Length, data=setosa)
lines(setosa$Sepal.Length,model1$fitted.values, col= "black")


##scatter plot for species versicolor
versicolor <-  subset(table5, Species == "versicolor")
plot(versicolor$Sepal.Length, versicolor$Sepal.Width,  xlab="Sepal length", ylab="Sepal width")
model2<-lm(Sepal.Width ~ Sepal.Length, data=versicolor)
lines(versicolor$Sepal.Length,model2$fitted.values,col= "blue")

##scatter plot for species virginica
virginica <-  subset(table5, Species == "virginica")
plot(virginica$Sepal.Length, virginica$Sepal.Width,  xlab="Sepal length", ylab="Sepal width")
model3<-lm(Sepal.Width ~ Sepal.Length, data=virginica)
lines(virginica$Sepal.Length,model3$fitted.values, col= "green")

##scatter plot for all the species
plot(table5$Sepal.Length, table5$Sepal.Width,  col=c("black","blue","green")[unclass(table5$Species)],xlab="Sepal length", ylab="Sepal width")
model<-lm(Sepal.Width ~ Sepal.Length, data=table5)
lines(table5$Sepal.Length,model$fitted.values, col= "red")
model1<-lm(Sepal.Width ~ Sepal.Length, data=setosa)
lines(setosa$Sepal.Length,model1$fitted.values, col= "black")
model2<-lm(Sepal.Width ~ Sepal.Length, data=versicolor)
lines(versicolor$Sepal.Length,model2$fitted.values, col= "blue")
model3<-lm(Sepal.Width ~ Sepal.Length, data=virginica)
lines(virginica$Sepal.Length,model3$fitted.values, col= "green")





model<-lm(Sepal.Width ~ Sepal.Length, data=table5)
error11 = model$fitted.values - table5$Sepal.Width
mean(error^2)


model1<-lm(Sepal.Width ~ Sepal.Length, data=setosa)
error12 = model1$fitted.values - setosa$Sepal.Width
mean(error1^2)

model2<-lm(Sepal.Width ~ Sepal.Length, data=versicolor)
error13 = model2$fitted.values - versicolor$Sepal.Width
mean(error2^2)

model3<-lm(Sepal.Width ~ Sepal.Length, data=virginica)
error14 = model3$fitted.values - virginica$Sepal.Width
mean(error3^2)

dev.copy(png, file="B3.png")
dev.off()
cat("B3.png has been saved in", getwd())


