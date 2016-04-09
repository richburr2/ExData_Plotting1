plot(subsetData$DateTime, subsetData$Sub_metering_1, type="n",xlab="",ylab="Energy sub metering")
lines(subsetData$DateTime, subsetData$Sub_metering_1, type="l",col="black")
lines(subsetData$DateTime, subsetData$Sub_metering_2, type="l",col="red")
lines(subsetData$DateTime, subsetData$Sub_metering_3, type="l",col="blue")

legend("topright",col=c("black","red","blue"),lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dev.copy(png,'plot3.png')
dev.off()
