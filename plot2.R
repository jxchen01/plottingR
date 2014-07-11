png('plot2.png')

plot(md$Global_active_power,type="l",axes=F,xlab=" ", ylab="Global Active Power (kilowatts)")
par(xaxp=c(0,length(md$Global_active_power),2))

axis(1,lab=F)
axis(2)
box()

text(axTicks(1), par("usr")[3] - 0.4, adj=1, labels=c("Thu", "Fri", "Sat"), xpd=T, cex=0.8)

dev.off()