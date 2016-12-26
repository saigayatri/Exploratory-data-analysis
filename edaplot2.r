filename <- "D:/3-2/household_power_consumption.txt"
datafile <- read.table(filename,header=TRUE,sep=";",stringsAsFactors = FALSE,dec =".")
subsetdata <- datafile[datafile$Date %in% c("1/2/2007","2/2/2007"),]
#str(subSetData)
datetime <- strptime(paste(subsetdata$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subsetdata$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
