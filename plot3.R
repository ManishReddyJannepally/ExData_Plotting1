par(mfrow = c(1,1), mar = c(4,4,2,2))
png("plot3.png", width = 480, height = 480)
plot(Sub_metering_1~datetime, col = 'black', type = 'l', 
       xlab = "", ylab = "Energy Sub Metering")
lines(Sub_metering_2~datetime, col = 'Red')
lines(Sub_metering_3~datetime, col = "Blue")
legend("topright",col = c("black","red","blue"),lty =1,
legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()

