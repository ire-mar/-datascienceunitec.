#Reading the datasets

table1 <- read.csv("Data set 1a.csv", na.strings = "")
table2<- read.csv("Data set 1b.csv", na.strings = "")

#Cleaning the Data 
#Correcting the spelling of entries

levels(table1$Product) <- c(levels(table1$Product), "Galaxy Edge S8")
table1$Product[table1$Product == "Galaxi Edge S8"]<-"Galaxy Edge S8"

levels(table1$Name) <- c(levels(table1$Name), "Alice")
table1$Name[table1$Name == "ALice"]<-"Alice"

#Setting the column names as more related table names
names(table1) = c("No","Date","Customer","Product","Quantity")


#Setting the Date format 
library(lubridate)
table1$Date<-dmy(table1$Date) 

##Converting word entries to numerals
table1$Quantity[table1$Quantity == "one"] <- "1"
table1$Quantity[table1$Quantity == "two"] <- "2"

#Omitting the na values
table1 <-na.omit(table1)

#Merging the two datasets 
table3 = merge(table1,table2,"Product")


#Function to set currency rate
Calculate.Rate <-function(arg1){ 
  if (arg1=='NZD') 
  { 
    out<-1
  } 
  if(arg1=='AUD') 
  {
    out<-1.2
  }  
  return(out)
}

table3["Exchange.Rate"] <-sapply(table3$Currency,Calculate.Rate)
table3$Unit.Price.NZD <-table3$Unit.Price*table3$Exchange.Rate


#Omit transactions made before 1 Jan 2010


subdata <- subset(table3, table3$Date>dmy(01012010))#"2010-1-10")

#Calculate Total Sales

subdata$Quantity <-as.numeric(subdata$Quantity)
subdata$billamtnzd <- subdata$Quantity*subdata$Unit.Price.NZD

#Calculate Total Monthly Sales

subdata$Month <- months(subdata$Date)
subdata$Year <- format(subdata$Date,format="%y")
totplot <- aggregate(billamtnzd ~Month +Year, subdata, sum)
print(totplot)

#Plotting the results

barplot(totplot$billamtnzd, names.arg = c(totplot$Month), xlab="Month", ylab="NZD", main = "Monthly Sales")

#Saving the results
dev.copy(png, file="B1.png")
dev.off()
cat("B1.png has been saved in", getwd())





