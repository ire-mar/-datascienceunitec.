
 table4<- read.csv("Data Set 3.csv")
 #setting the plot and margins
  par(mfrow = c(2,2), mar=c(4, 4, 2,1))
  #plotting the histogram for L,H,N,B
  hist( table4$L,col = "Sky Blue", xlab = "L", main = "Histogram of L")
  hist( table4$H,col = "Sky Blue", xlab = "H", main = "Histogram of H")
  hist( table4$N,col = "Sky Blue", xlab = "N", main = "Histogram of N")
  hist( table4$B,col = "Sky Blue", xlab = "B", main = "Histogram of B")
  
  table4<- read.csv("Data Set 3.csv")
  #setting the plot and margins
  par(mfrow = c(2,2), mar=c(4, 4, 2,1))
  #plotting the density functions for L,H,N,B
  plot(density(table4$L), xlab = "N= 150 Bandwidth= 1.726" , main= "Density function of L")
  plot(density(table4$H), xlab = "N= 150 Bandwidth= 1.632" , main= "Density function of H")
  plot(density(table4$N), xlab = "N= 150 Bandwidth= 0.9862" , main= "Density function of N")
  plot(density(table4$B), xlab = "N= 150 Bandwidth= 1.479" , main= "Density function of B")
  
  
  #installing the package
  
  install.packages("e1o71")
  library(e1071)
  skewness(table4$L)
  skewness(table4$H)
  skewness(table4$N)
  skewness(table4$B)
  kurtosis(table4$L)
  kurtosis(table4$H)
  kurtosis(table4$N)
  kurtosis(table4$B)
  
  
  table4<- read.csv("Data Set 3.csv")
  #setting the plot and margins
  par(mfrow = c(2,2), mar=c(4, 4, 2,1))
  #plotting the boxplot for L,H,N,B
  boxplot(table4$L,main = "L")
  boxplot(table4$H,main = "H")
  boxplot(table4$N,main = "N")
  boxplot(table4$B,main = "B")
  
  
  #saving the results
  
  dev.copy(png, file="B2.png")
  dev.off()
  cat("B2.png has been saved in", getwd())
  
  
  #Calculating mean,variance,standard deviation for L,H,N,B
  mean(table1$L)
  mean(table1$H)
  mean(table1$N)
  mean(table1$B)
  var(table1$L)
  var(table1$H)
  var(table1$N)
  var(table1$B)
  sd(table1$L)
  sd(table1$H)
  sd(table1$N)
  sd(table1$B)
  
  
