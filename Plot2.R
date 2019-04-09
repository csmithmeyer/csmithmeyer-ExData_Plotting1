setwd("C:/Users/1257256940.MIL/Desktop/Coursera/Plot/")
library(lubridate)

data<-read.table("household_power_consumption.txt",sep = ";", header = T)

data$Date<-as.character(data$Date)
data$Date<-strptime(data$Date,"%d/%m/%Y")
data$Time<-as.character(data$Time) 
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%Y-%m-%d %H:%M:%S") 

png("plot2.png", width=480, height=480)
plot(datetime,data$Global_active_power, type = "l",xlab="", ylab="Global Active Power (kilowatts)")
dev.off()




