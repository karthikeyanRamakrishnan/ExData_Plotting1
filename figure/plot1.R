x<-read.csv("household_power_consumption.txt",nrow=85000,sep=";")
y<-x[(x$Date=="1/2/2007"|x$Date=="2/2/2007"),]
z<-as.numeric(as.character(y[,3]))
hist(z,main="Global Active Power",xlab="Global Active Power(kilowatts)",col="red")
dev.copy(png,file="plot1.png")
dev.off()