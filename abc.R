#Reading the datasets


table125 <- read.csv("NZ.csv", na.strings = "")
table126<-read.csv("householdlvweights.csv", na.strings = "")

#Cleaning the Data 


#Setting the column names as more related table names


names(table126) = c("Priceindexname","Year","PriceIndex","nzhec","Name","Shortage","Level","Subgroup","Subgroupname","Subgroupshortage","Weight","Weeklyexpense","Equalisedweeklyexpense")


##Converting numeral entries to words


#Omitting the na values
table126 <-na.omit(table126)


#Omit transactions made before 1 Jan 2010


subdata1226 <- subset(table1226, table1226$Year>2010)


##Frequency
table(table126$Year)
table(table126$Subgroup)
table(table126$Level)

##Percentage

P1<-100*(table(table126$Year)/sum(table(table126$Year)))
P2<-100*(table(table126$Subgroup)/sum(table(table126$Subgroup)))
P3<-100*(table(table126$Level)/sum(table(table126$Level)))




##Mean,Median,Min,Max,Range,Variance,Standard Variance,quartile........
mean(table126$Weight)
mean(table126$Weeklyexpense)
mean(table126$Equalisedweeklyexpense)
median(table126$Weight)
median(table126$Weeklyexpense)
median(table126$Equalisedweeklyexpense)
min(table126$Weight)
min(table126$Weeklyexpense)
min(table126$Equalisedweeklyexpense)

max(table126$Weight)
max(table126$Weeklyexpense)
max(table126$Equalisedweeklyexpense)


range(table126$Weight)


#Shape(symmetry, sharpness)
par(mfrow = c(2,2), mar=c(4, 4, 2,1))
hist( table126$Weight,col = "Sky Blue", xlab = "Weight", main = "Histogram of Weight")
hist( table126$Weeklyexpense,col = "Sky Blue", xlab = "Weekly Expense", main = "Histogram of Weekly expense")

plot(density(table126$Weight), xlab = "Weight" , main= "Density function of Weight")
plot(density(table126$Weeklyexpense), xlab = "WeeklyExpense" , main= "Density function of WeeklyExpense")

#skewness and kurtosis

skewness(table126$Weight)
skewness(table126$Weeklyexpense)
kurtosis(table126$Weight)
kurtosis(table126$Weeklyexpense)


#pie chart
pie(table(table126$Year),main="Yearly household Requirements")
pie(table(table126$Subgroup),main="Grouping Requirements in household")


#barplot
barplot( table126$Weight,col = "Sky Blue", xlab = "Year", ylab = "Frequency",main = "Barplot of Household inventory Weights")
barplot( table126$Weeklyexpense,col = "Sky Blue", xlab = "Year", ylab = "Frequency",main = "Barplot of WeeklyExpense")



boxplot(table126$Year,main = "Year")
boxplot(table126$Subgroup,main = "SubGroups")

##Bivariate Analysis
##Correlation and Covariance
cor(table126$Year,table126$Weight)
cor(table126$Year,table126$Weeklyexpense)
cor(table126$Year,table126$Equalisedweeklyexpense)


cov(table126$Year,table126$Weight)
cov(table126$Year,table126$Weeklyexpense)
cor(table126$Year,table126$Equalisedweeklyexpense)


##Linear Regression
##Calculating Linear Model
model1<-lm(Year ~ Weight, data=table126)
lines(table126$Weight,model1$fitted.values)

##Polynomial Regression
##Calculating Polynomial Model
model1<-lm(table126$Weight~poly(table126$Year,2))
lines(table126$Weight,model1$fitted.values)

##Scatterplot for year,weight,weeklyexpense,equalisedweeklyexpense,subgroup
plot(table126$Year, table126$Weight, xlab="X", ylab="Y")
model1<-lm(table126$Weight ~ poly(table126$Year,1))
lines(table126$Year,model1$fitted.values,col="Red")




plot(table126$Weight, table126$Weeklyexpense, xlab="Weight", ylab="Weeklyexpense")
model1<-lm(Weight ~ Weeklyexpense, data=table126)
lines(table126$Weight,model1$fitted.values)

plot(table126$Weight, table126$Equalisedweeklyexpense, xlab="Weight", ylab="Equalisedweeklyexpense")
model1<-lm(Weeklyexpense ~ Equalisedweeklyexpense, data=table126)
lines(table126$Weeklyexpense,model1$fitted.values)



##Creating Subsets based on different genre








