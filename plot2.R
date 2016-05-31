plot(Global_active_power,type="lines",xlab="",ylab='Global Active Power (kilowatts)',xaxt='n')
axis(1,at=c(0,1440,2880),labels=c("Thu","Fri","Sat"))
dev.copy(png,'plot2.png')
dev.off()