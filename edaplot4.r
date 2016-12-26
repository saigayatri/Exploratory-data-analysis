dataFile <- "D:/3-2/ household_power_consumption.txt"
data <- read.table("D:/3-2/ house_hold_power_consumption.txt",header=TRUE,sep =";",stringsAsFactors = FALSE, dec=".")
subsetdata(data[data$Date %in% c("1/2/2007"to"2/2/2007"),])
datetime <- strptime(paste(subsetdata$Date,subsetdata$Time,sep=""),"%d%m%Y %H:%M:%S")
globalActivePower<- as.numeric(subsetdata$Global_active_power)
globalReactivePower <- as.numeric(subSetData$Global_reactive_power)
voltage <- as.numeric(subsetdata$Voltage)
submetering1 <-as.numeric(subsetdata$Sub_metering_1)
submetering2 <-as.numeric(subsetdata$Sub_metering_2)
submetering3 <- as.numeric(subsetdata$Sub_metering_3)

png("plot4.png",width=480,height=480)
par(mfrow=c(2,2))

plot(datetime,globalActivePower,type="l",xlab="",ylab="Global Active Power(kilowatts)")

plot(datetime,voltage,type="l",xlab="datetime",ylab="Voltage")

plot(datetime,submetering1,type="l",xlab="",ylab="Energu Submeterimg")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

plot(datetime,globalReactivePower,type="l",xlab="datetime",ylab="Global_reactive_power")
dev.off()
