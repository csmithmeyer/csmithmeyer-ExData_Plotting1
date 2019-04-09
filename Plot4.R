setwd("C:/Users/1257256940.MIL/Desktop/Coursera/Plot/")
library(lubridate)

data<-read.table("household_power_consumption.txt",sep = ";", header = T)

data$Date<-as.character(data$Date)
data$Date<-strptime(data$Date,"%d/%m/%Y")
data$Time<-as.character(data$Time) 
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%Y-%m-%d %H:%M:%S") 

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))
plot(datetime,data$Global_active_power, type = "l",xlab="", ylab="Global Active Power (kilowatts)")
plot(datetime,data$Voltage, type = "l", xlab="datetime", ylab="Voltage")
plot(datetime,data$Sub_metering_1, type = "l", xlab="", ylab="Energy sub metering")
lines(datetime,data$Sub_metering_2, type = "l",col="red")
lines(datetime,data$Sub_metering_3, type = "l",col="blue")
legend("topright", c("Sub Metering 1", "Sub Metering 2","Sub Metering 3"), 
       lty=1,col = c("black","red", "blue"))
plot(datetime,data$Global_reactive_power,type="l")

dev.off()