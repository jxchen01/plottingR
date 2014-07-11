## get the row number of the data of interest 
## using binary search

## find the beginning index
a<-1
b<-2075259
pt<-round((a+b)/2)
mytime1<-as.POSIXlt("2007-01-31")
mytime2<-as.POSIXlt("2007-02-01")
while(TRUE){
	md<-read.table('household_power_consumption.txt',nrows=2,skip=pt,sep=";")
	t1<-strptime(md[1,1],"%d/%m/%Y")
	t2<-strptime(md[2,1],"%d/%m/%Y")
	if(mytime1==t1 && mytime2==t2){
		break
	} else if(t1<=mytime1){
		a<-pt
	} else if(t1>mytime1){
		b<-pt		
	}
	pt<-round((a+b)/2)
}

skipnum<-pt+1

## find the ending index
a<-1
b<-2075259
pt<-round((a+b)/2)
mytime1<-as.POSIXlt("2007-02-02")
mytime2<-as.POSIXlt("2007-02-03")
while(TRUE){
	md<-read.table('household_power_consumption.txt',nrows=2,skip=pt,sep=";")
	t1<-strptime(md[1,1],"%d/%m/%Y")
	t2<-strptime(md[2,1],"%d/%m/%Y")
	if(mytime1==t1 && mytime2==t2){
		break
	} else if(t1<=mytime1){
		a<-pt
	} else if(t1>mytime1){
		b<-pt		
	}
	pt<-round((a+b)/2)
}

readRowNum<-pt-skipnum+1

## read the desired data
md<-read.table('household_power_consumption.txt',nrows=readRowNum,skip=skipnum, na.strings="?",sep=";")

## assign column names
colnames(md)<-c('Date', 'Time', 'Global_active_power', 'Global_reactive_power', 'Voltage', 'Global_intensity', 'Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3')

## convert Data
md$Date<-as.POSIXlt(strptime(md[,1],"%d/%m/%Y"))

