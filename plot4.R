Globalactivepower = as.numeric(req_data$Global_active_power)
Globalreactivepower = as.numeric(req_data$Global_reactive_power)
Voltage = as.numeric(req_data$Voltage)
datetime = as.POSIXct(req_data$datetime)
Submetering1 = as.numeric(req_data$Sub_metering_1)
Submetering2 = as.numeric(req_data$Sub_metering_2)
Submetering3 = as.numeric(req_data$Sub_metering_3)


png("plot4.png",width = 480, height = 480)
par(mfrow = c(2,2), mar = c(4,4,2,2))
with(req_data,{
  plot(Globalactivepower~datetime, type ='l', xlab = "", ylab = "Global active power")
  plot(Voltage~datetime,type = 'l', ylab = "Voltage", xlab = "datetime")
  plot(Submetering1~datetime, col = 'black', type = 'l', 
       xlab = "", ylab = "Energy Sub Metering")
  lines(Submetering2~datetime, col = 'Red')
  lines(Submetering3~datetime, col = "Blue")
  legend("topright",col = c("black","red","blue"),lty =1,
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  plot(Globalreactivepower~datetime, type = 'l',ylab = "Global_reactive_power", xlab = "datetime")
  dev.off()
})
