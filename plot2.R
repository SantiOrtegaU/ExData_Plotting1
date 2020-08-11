# Read Data, global active power consumption

globalpower <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
subsetdata <- subset(globalpower,globalpower$Date=="1/2/2007"|globalpower$Date=="2/2/2007")

#Conversions
date <- strptime(paste(subsetdata$Date,subsetdata$Time,sep=" "),format = "%d/%m/%Y %H:%M:%S")

#Plotting
png("plot2.png",height = 480,width = 480)
plot(date,as.numeric(subsetdata$Global_active_power),type="l",xlab = "",ylab = "Global Active Power (kilowatts)")
dev.off()