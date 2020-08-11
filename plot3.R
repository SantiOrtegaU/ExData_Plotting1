# Read Data, global active power consumption

globalpower <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
subsetdata <- subset(globalpower,globalpower$Date=="1/2/2007"|globalpower$Date=="2/2/2007")

#Conversions
date <- strptime(paste(subsetdata$Date,subsetdata$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")

#Plotting
png("plot3.png",height = 480,width = 480)
plot(date, as.numeric(subsetdata$Sub_metering_1),type = "l",xlab = "",ylab = "Energy sub metering")
with(subsetdata,lines(date,Sub_metering_2,type = "l",col="red"))
with(subsetdata,lines(date,Sub_metering_3,type = "l",col="blue"))
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,col=c("black","red","blue"))
dev.off()