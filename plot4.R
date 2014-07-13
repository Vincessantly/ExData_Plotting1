data <- read.table("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, header = TRUE)
data2 <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"), ]
png(file = "plot4.png")
datetime <- strptime(paste(data2$Date,data2$Time), format="%d/%m/%Y %H:%M:%S")
par(mfrow = c(2,2))
with(data2, {
    #1 
    plot(datetime, Global_active_power, type="l", ylab = "Global Active Power (kilowatts)")
    #2
    plot(datetime, Voltage, type="l", ylab = "Voltage")
    #3
    plot(datetime, Sub_metering_1, type="l", ylab = "Energy sub metering")
    lines(datetime, data2$Sub_metering_2, type="l", col = "red")
    lines(datetime, data2$Sub_metering_3, type="l", col = "blue")
    legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))
    #4
    plot(datetime, Global_reactive_power, type="l", ylab = "Global_reactive_power")
    })
dev.off()