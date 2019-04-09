setwd("C:/Users/1257256940.MIL/Desktop/Coursera/Plot/")
library(lubridate)

data<-read.table("household_power_consumption.txt",sep = ";", header = T)

data$Date<-as.character(data$Date)
data$Date<-strptime(data$Date,"%d/%m/%Y")
data$Time<-as.character(data$Time)
data$Time<-hms(data$Time)

png("plot1.png", width=480, height=480)
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", 
     main="Global Active Power")
dev.off()






