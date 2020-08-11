# Read Data, global active power consumption

globalpower <- read.table("household_power_consumption.txt",sep=";",header=TRUE)
subsetdata <- subset(globalpower,globalpower$Date=="1/2/2007"|globalpower$Date=="2/2/2007")

#Plotting
png("plot1.png",height = 480,width = 480)
hist(as.numeric(subsetdata$Global_active_power),col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)")
dev.off()