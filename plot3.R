
plot3<- function()
{
  ##read the data from text file and store it
power <- read.table("Dataset.txt", header=TRUE, sep=";", na.strings = "?", 
                      colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
voltage <- subset(power,Voltage>249,select =c(Voltage,Global_active_power))
voltage1 <- subset(power,Voltage>=249 & Voltage<250,select = c(Voltage,Global_active_power))
voltage2 <- subset(power,Voltage>=250,select = c(Voltage,Global_active_power))

#scatter plot main plotted with Voltage >249
with(voltage,plot(Voltage,Global_active_power,xlab = "voltage", main = "Global Active Power (kilowatts) for Voltage>= 249"))
with (voltage1, points (Voltage, Global_active_power))#scatter plot for the showing the voltage >249 to <250
with (voltage2, points (Voltage, Global_active_power, col = "red"))# scatter plot above volatge 250 in color red

#legend is used to display information about the plot type
legend("topright",pch=1,col=c("black","red"),
       legend = c("Voltage>=249 &<250","Voltage>=250"))

#png copy of plot is create using dev.copy command
dev.copy(png,file="Plot3.png")
dev.off()
cat("Plot3.png has been saved in", getwd())
}

