download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip","Project1data.zip",mode="wb")
unzip("Project1data.zip")

project1data <- read.table("household_power_consumption.txt",header = T,sep=";",na.strings = "?", stringsAsFactors = F)
project1data$DateTime <- strptime(paste(project1data$Date, project1data$Time) ,"%d/%m/%Y %H:%M:%S")
project1data$Date <- as.Date(project1data$Date,"%d/%m/%Y")
##project1data$Time <- strptime(project1data$Time,"%H:%M:%S")

subsetData <- project1data[project1data$Date>=as.Date("2007-02-01", "%Y-%m-%d"),]
subsetData <- subsetData[subsetData$Date<=as.Date("2007-02-02", "%Y-%m-%d"),]

hist(subsetData$Global_active_power,main  = "Global Active Power", xlab = "Global Active Power (kilowatts)",col="red")

dev.copy(png,'plot1.png')
dev.off()
