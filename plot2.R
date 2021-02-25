plot2<- function()
  
{
  ##read the data from text file and store it 
  power <- read.table("Dataset.txt", header=TRUE, sep=";", na.strings = "?", 
                            colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
  ##boxplot for voltage 237
  boxplot(subset( power, Voltage == 237)$Global_active_power, col = "red",xlab = "voltage 237", main = "Global Active Power (kilowatts) for Voltage 237")
  #png copy of plot is create using dev.copy command
  dev.copy(png, file="Plot2.png",width=550, height=300)
  dev.off()
  cat("Plot2.png has been saved in", getwd())
}
