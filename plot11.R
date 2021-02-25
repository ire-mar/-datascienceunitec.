plot11<- function()
{
table11<- read.csv("Data Set 3.csv")
par(mfrow = c(2,2), mar=c(4, 4, 2,1))
hist( table11$L,col = "Sky Blue", xlab = "L", main = "Histogram of L")
hist( table11$H,col = "Sky Blue", xlab = "H", main = "Histogram of H")
hist( table11$N,col = "Sky Blue", xlab = "N", main = "Histogram of N")
hist( table11$B,col = "Sky Blue", xlab = "B", main = "Histogram of B")



plot(density(table11$L), xlab = "N= 150 Bandwidth= 1.726" , main= "Density function of L")
plot(density(table11$H), xlab = "N= 150 Bandwidth= 1.632" , main= "Density function of H")
plot(density(table11$N), xlab = "N= 150 Bandwidth= 0.9862" , main= "Density function of N")
plot(density(table11$B), xlab = "N= 150 Bandwidth= 1.479" , main= "Density function of B")



boxplot(table11$L,main = "L")
boxplot(table11$H,main = "H")
boxplot(table11$N,main = "N")
boxplot(table11$B,main = "B")




dev.copy(png, file="Plot11.png")
dev.off()
cat("Plot11.png has been saved in", getwd())


}