png('plot4.png')

par(mfrow = c(2,2))
#par(mgp = c(3,0,0))

## plot (1,1)
plot(md$Global_active_power,type="l",axes=F,xlab=" ", ylab="Global Active Power (kilowatts)")
par(xaxp=c(0,length(md$Global_active_power),2))

axis(1,lab=F)
axis(2)
box()

text(axTicks(1), par("usr")[3] - 0.8, adj=1, labels=c("Thu", "Fri", "Sat"), xpd=T, cex=0.8)

## plot (1,2)
plot(md$Voltage,type="l",axes=F,xlab="datetime", ylab="Voltage")
par(xaxp=c(0,length(md$Voltage),2))

axis(1,lab=F)
axis(2)
box()

text(axTicks(1), par("usr")[3] - 1.2, adj=1, labels=c("Thu", "Fri", "Sat"), xpd=T, cex=0.8)

## plot(2,1)
plot(md$Sub_metering_1,type="l",axes=F,xlab=" ", ylab="Energy sub metering")
lines(md$Sub_metering_2,type="l",col="red")
lines(md$Sub_metering_3,type="l",col="blue")

par(xaxp=c(0,length(md$Sub_metering_1),2))
axis(1,lab=F)
axis(2)
box()
text(axTicks(1), par("usr")[3]-5 , adj=1, labels=c("Thu", "Fri", "Sat"),xpd=T, cex=0.8)

legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c("black","red","blue"),lty=c(1,1,1), lwd=2, bty="n")

## plot(2,2)
plot(md$Global_reactive_power,type="l",axes=F,xlab=" datetime", ylab="Global_reactive_power")
par(xaxp=c(0,length(md$Global_reactive_power),2))

axis(1,lab=F)
axis(2)
box()

text(axTicks(1), par("usr")[3] -0.05 , adj=1, labels=c("Thu", "Fri", "Sat"), xpd=T)

dev.off()