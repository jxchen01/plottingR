png('plot3.png')

plot(md$Sub_metering_1,type="l",axes=F,xlab=" ", ylab="Energy sub metering")
lines(md$Sub_metering_2,type="l",col="red")
lines(md$Sub_metering_3,type="l",col="blue")

par(xaxp=c(0,length(md$Sub_metering_1),2))
axis(1,lab=F)
axis(2)
box()
text(axTicks(1), par("usr")[3] - 1.5, adj=1, labels=c("Thu", "Fri", "Sat"),xpd=T, cex=0.9)

legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c("black","red","blue"),lty=c(1,1,1), lwd=2)

dev.off()