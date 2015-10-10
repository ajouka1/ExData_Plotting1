#read the dataset
data <- read.table("household_power_consumption.txt", header=TRUE,sep=";")

#take the sample out of the dataset
sampleData <- subset(data, data$Date %in% c("1/2/2007", "2/2/2007"))

#make the histogram
png("plot1.png", width=480, height=480)
plot1 <- hist(as.numeric(sampleData[,3]), main="Global Activity Power", col="red", xlab="Global Active Power(Kilowatts")
dev.off()



       


