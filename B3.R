##scatter plot for width and length of petal

table5 <- read.csv("Data Set 4.csv")
plot(table5$Petal.Length, table5$Petal.Width, xlab="Petal length", ylab="Petal width")
model<-lm(Petal.Width ~ Petal.Length, data=table5)
lines(table5$Petal.Length,model$fitted.values)

##scatter plot for species setosa
setosa <-  subset(table5, Species == "setosa")
plot(setosa$Petal.Length, setosa$Petal.Width,  xlab="Petal length", ylab="Petal width")
##abline(lm(Petal.Width ~ Petal.Length, data=setosa)$coefficients, col="black")
model1<-lm(Petal.Width ~ Petal.Length, data=setosa)
lines(setosa$Petal.Length,model1$fitted.values, col= "black")


##scatter plot for species versicolor
versicolor <-  subset(table5, Species == "versicolor")
plot(versicolor$Petal.Length, versicolor$Petal.Width,  xlab="Petal length", ylab="Petal width")
model2<-lm(Petal.Width ~ Petal.Length, data=versicolor)
lines(versicolor$Petal.Length,model2$fitted.values,col= "blue")

##scatter plot for species virginica
virginica <-  subset(table5, Species == "virginica")
plot(virginica$Petal.Length, virginica$Petal.Width,  xlab="Petal length", ylab="Petal width")
model3<-lm(Petal.Width ~ Petal.Length, data=virginica)
lines(virginica$Petal.Length,model3$fitted.values, col= "green")

##scatter plot for all the species
plot(table5$Petal.Length, table5$Petal.Width,  col=c("black","blue","green")[unclass(table5$Species)],xlab="Petal length", ylab="Petal width")
model<-lm(Petal.Width ~ Petal.Length, data=table5)
lines(table5$Petal.Length,model$fitted.values, col= "red")
model1<-lm(Petal.Width ~ Petal.Length, data=setosa)
lines(setosa$Petal.Length,model1$fitted.values, col= "black")
model2<-lm(Petal.Width ~ Petal.Length, data=versicolor)
lines(versicolor$Petal.Length,model2$fitted.values, col= "blue")
model3<-lm(Petal.Width ~ Petal.Length, data=virginica)
lines(virginica$Petal.Length,model3$fitted.values, col= "green")


#Calculating Error

model<-lm(Petal.Width ~ Petal.Length, data=table5)
error = model$fitted.values - table5$Petal.Width
mean(error^2)


model1<-lm(Petal.Width ~ Petal.Length, data=setosa)
error1 = model1$fitted.values - setosa$Petal.Width
mean(error1^2)

model2<-lm(Petal.Width ~ Petal.Length, data=versicolor)
error2 = model2$fitted.values - versicolor$Petal.Width
mean(error2^2)

model3<-lm(Petal.Width ~ Petal.Length, data=virginica)
error3 = model3$fitted.values - virginica$Petal.Width
mean(error3^2)


##sepal length and width

##scatter plot for width and lenght of sepal

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
error1 = model$fitted.values - table5$Sepal.Width
mean(error^2)


model1<-lm(Sepal.Width ~ Sepal.Length, data=setosa)
error2 = model1$fitted.values - setosa$Sepal.Width
mean(error1^2)

model2<-lm(Sepal.Width ~ Sepal.Length, data=versicolor)
error3 = model2$fitted.values - versicolor$Sepal.Width
mean(error2^2)

model3<-lm(Sepal.Width ~ Sepal.Length, data=virginica)
error4 = model3$fitted.values - virginica$Sepal.Width
mean(error3^2)

dev.copy(png, file="B3.png")
dev.off()
cat("B3.png has been saved in", getwd())













