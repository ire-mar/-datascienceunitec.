plot1<- function()
{
  ##read the data from text file and store it 
  power <- read.table("Dataset.txt", header=TRUE, sep=";", na.strings = "?", 
                            colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
  ##histogram plot for voltage 237
  hist(subset( power, Voltage == 237)$Global_active_power, col = "red",xlab = "Global Active Power (kilowatts) for Voltage 237", main = "Global Active Power")
  #png copy of plot is create using dev.copy command
  dev.copy(png, file="Plot1.png",width=600, height=400)
  dev.off()
  cat("Plot1.png has been saved in", getwd())
}
