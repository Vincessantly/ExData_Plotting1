data <- read.table("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, header = TRUE)
data2 <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"), ]
png(file = "plot2.png")
datetime <- strptime(paste(data2$Date,data2$Time), format="%d/%m/%Y %H:%M:%S")
with(data2, plot(datetime, Global_active_power, type="l", ylab = "Global Active Power (kilowatts)"))
dev.off()