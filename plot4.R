plot4<- function()
{
  ##read the data from text file and store it
  power <- read.table("Dataset.txt", header=TRUE, sep=";", na.strings = "?", 
                      colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))

par(mfrow = c(3,1), mar=c(4, 4, 2,1))
##subsetting each submetering value
hist(subset( power, Sub_metering_2 == 0.000)$Global_active_power, col = "red",xlab = "Global Active Power (kilowatts)", main = "Global Active Power for Sub_metering_2= 0.000")
hist(subset( power, Sub_metering_2 == 1.000)$Global_active_power, col = "red",xlab = "Global Active Power (kilowatts)", main = "Global Active Power for Sub_metering_2= 1.000")
hist(subset( power, Sub_metering_2 == 2.000)$Global_active_power, col = "red",xlab = "Global Active Power (kilowatts)", main = "Global Active Power for Sub_metering_2= 2.000")
#png copy of plot is create using dev.copy command
dev.copy(png, file="Plot4.png")
dev.off()
cat("Plot4.png has been saved in", getwd())
}