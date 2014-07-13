data <- read.table("household_power_consumption.txt", sep = ";", stringsAsFactors = FALSE, header = TRUE)
data2 <- data[which(data$Date=="1/2/2007" | data$Date=="2/2/2007"), ]
png(file = "plot1.png")
hist(as.numeric(data2$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()