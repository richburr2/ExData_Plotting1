##Set up 2x2 grid, filled columnwise
par(mfcol=c(2,2), mar=c(4,4,2,0.5))

##Upper Left (same as plot2)
plot(subsetData$DateTime, subsetData$Global_active_power, type="l",xlab="",ylab="Global Active Power (kilowatts)")

##bottom left (same as plot3)
plot(subsetData$DateTime, subsetData$Sub_metering_1, type="n",xlab="",ylab="Energy sub metering")
lines(subsetData$DateTime, subsetData$Sub_metering_1, type="l",col="black")
lines(subsetData$DateTime, subsetData$Sub_metering_2, type="l",col="red")
lines(subsetData$DateTime, subsetData$Sub_metering_3, type="l",col="blue")
legend("topright",col=c("black","red","blue"),lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), bty = "n", xjust=1)

##upper right plot
plot(subsetData$DateTime, subsetData$Voltage, type="l",xlab="datetime",ylab="Voltage")

##bottom right plot
plot(subsetData$DateTime, subsetData$Global_reactive_power, type="l",xlab="datetime",ylab="Global_reactive_power")


dev.copy(png,'plot4.png')
dev.off()

