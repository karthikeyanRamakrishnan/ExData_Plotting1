x<-read.csv("household_power_consumption.txt",nrow=85000,sep=";")
y<-x[(x$Date=="1/2/2007"|x$Date=="2/2/2007"),]
a<-as.Date(y$Date,format="%d/%m/%Y")
b<-as.character(y$Time)
c<-paste(a,b)
d<-strptime(c,format="%Y-%m-%d %H:%M:%S")
plot(d,as.numeric(as.character(y[,3])),type="l",xlab="",ylab="Global Active Power(kilowatts)")
dev.copy(png,file="plot2.png")
dev.off()