data<-read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt"'),header=F, sep=';')
colnames(data) <-names(read.table('household_power_consumption.txt', header=TRUE,sep=";",nrows=1))

data$dateTime <- strptime( paste(data$Date,data$Time), format="%d/%m/%Y %H:%M:%S")
plot(data[,10],data[,3],type="l",ylab="Global Active Power(kilowats)",xlab="")
dev.copy(png,file="plot2.png", width=480, height=480)
dev.off()

