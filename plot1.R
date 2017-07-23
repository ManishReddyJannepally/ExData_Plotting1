par(mfrow = c(1,1), mar = c(4,4,2,2))
png("plot1.png", width = 480, height = 480)
dev.cur()
req_data$Global_active_power = as.numeric(req_data$Global_active_power)
hist(req_data$Global_active_power, col = "red",main = "Global Active Power",
     xlab = "Global Active Power (Kilowatts)")
dev.off()
