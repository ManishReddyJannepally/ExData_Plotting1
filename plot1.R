rm(list = ls())
setwd("C:/Users/janne/Desktop/R - Coursera/EDA- Project1")
unzip("household_power_consumption.zip")
data <- read.table("household_power_consumption.txt", header = T, 
                   sep = ";", na.strings = "?")
data$Date = as.Date(data$Date,"%d/%m/%Y")
data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
req_data = subset(data,Date >= "2007-02-01" & Date <= "2007-02-02")



par(mfrow = c(1,1), mar = c(4,4,2,2))
png("plot1.png", width = 480, height = 480)
dev.cur()
req_data$Global_active_power = as.numeric(req_data$Global_active_power)
hist(req_data$Global_active_power, col = "red",main = "Global Active Power",
     xlab = "Global Active Power (Kilowatts)")
dev.off()
