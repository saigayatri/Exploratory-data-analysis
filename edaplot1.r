filename <- "D:/3-2/household_power_consumption.txt"
datafile <- read.table(filename,header=TRUE,sep=";",stringsAsFactors = FALSE,dec =".")
subsetdata <- datafile[datafile$Date %in% c("1/2/2007","2/2/2007"),]
globalActivePower <- as.numeric(subsetdata$Global_active_power)
 png("edaplot1.png",width=480,height=480)
 hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
 dev.off()
