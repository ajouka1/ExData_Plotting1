data <- read.table("household_power_consumption.txt", header=TRUE,sep=";")
sampleData <- subset(data, data$Date %in% c("1/2/2007", "2/2/2007"))

datetime <- strptime(paste(sampleData$Date, sampleData$Time, sep=" "), "%d/%m/%Y %H:%M:%S")

##settings
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

#plot1
plot(datetime, as.numeric(sampleData[,3]), type="l", xlab="", ylab="Global Active Power", cex=0.2)
#plot2
plot(datetime, as.numeric(sampleData[,5]), type="l", xlab="datetime", ylab="Voltage")

#plot3
plot(datetime, as.numeric(sampleData[,7]), type="l", xlab="", ylab="Energy sub metering")
line(datetime, as.numeric(sampleData[,8]), type="l", col="red")
line(datetime, as.numeric(sampleData[,9]), type="l", col="blue")
legend("topright", c("sub_metering_1", "sub_metering_2", "sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

#plot4
plot(datetime, as.numeric(sampleData[,4]), type="l", xlab="datetime", ylab="Global_reactive_power")
