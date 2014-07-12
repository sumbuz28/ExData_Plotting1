data<-read.table(pipe('grep "^[1-2]/2/2007" "household_power_consumption.txt"'),header=F, sep=';')
colnames(data) <-names(read.table('household_power_consumption.txt', header=TRUE,sep=";",nrows=1))
hist(data[,3],xlab="Global Active Power(kilowats)",col="red", main="Global Active Power")
dev.copy(png,file="plot1.png", width=480, height=480)
dev.off()

