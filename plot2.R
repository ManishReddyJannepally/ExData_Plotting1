par(mfrow = c(1,1), mar = c(4,4,2,2))
png("plot2.png", width = 480, height = 480)
plot(req_data$datetime,req_data$Global_active_power,type = 'l',
                  ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()
