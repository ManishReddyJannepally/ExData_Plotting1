rm(list = ls())
setwd("C:/Users/janne/Desktop/R - Coursera/EDA- Project1")
unzip("household_power_consumption.zip")
data <- read.table("household_power_consumption.txt", header = T, 
                   sep = ";", na.strings = "?")
data$Date = as.Date(data$Date,"%d/%m/%Y")
data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
req_data = subset(data,Date >= "2007-02-01" & Date <= "2007-02-02")
str(req_data)
names(req_data)

