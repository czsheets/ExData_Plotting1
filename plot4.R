par(mfrow=c(2,2))

plot(Global_active_power,type="lines",xlab="",ylab='Global Active Power (kilowatts)',xaxt='n')
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))

plot(Voltage,type='l',xlab='datetime',lwd=1,xaxt='n')
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))

plot(Sub_metering_1,type='n',ylab='Energy sub metering',xaxt='n',xlab="")
lines(Sub_metering_1,type='lines',col='black')
lines(Sub_metering_2,type='l',col='red')
lines(Sub_metering_3,type='l',col='blue')
legend('topright',lty=1,bty='n',cex=.8,legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'))
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))

plot(Global_reactive_power,type='l',xlab="datetime",lwd=1.5,ylab='Global_reactive_power',xaxt='n')
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))

dev.copy(png,'plot4.png')
dev.off()