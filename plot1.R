png("plot1.png",width = 480, height = 480, units = "px")

hist(md$Global_active_power, main="Global Active Power", xlab="Global Acive Power (kilowatts)", col="red")

dev.off()