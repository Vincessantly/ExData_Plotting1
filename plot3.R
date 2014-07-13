data <- read.table("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, header = TRUE)
data2 <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"), ]
png(file = "plot3.png")
datetime <- strptime(paste(data2$Date,data2$Time), format="%d/%m/%Y %H:%M:%S")
with(data2, plot(datetime, Sub_metering_1, type="l", ylab = "Energy sub metering"))
lines(datetime, data2$Sub_metering_2, type="l", col = "red")
lines(datetime, data2$Sub_metering_3, type="l", col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
dev.off()