delay<- mapply(function(x,y){x+y},x=data_2006$ArrDelay,y=data_2006$DepDelay)
Status<- sapply(delay,function(x){if(x>0){"Delayed"}else{"Ontime"}})
S<-data.frame(Status=Status)
data1<-data_2006
data1["Status"]<-S
data1<-subset(data1, select = -c(Year,ActualElapsedTime,CRSElapsedTime,AirTime,TaxiIn,TaxiOut,Cancelled,CancellationCode))
delay<- mapply(function(x,y){x+y},x=data_2007$ArrDelay,y=data_2007$DepDelay)
Status<- sapply(delay,function(x){if(x>0){"Delayed"}else{"Ontime"}})
S<-data.frame(Status=Status)
data2<-data_2007
data2["Status"]<-S
data2<-subset(data2, select = -c(Year,ActualElapsedTime,CRSElapsedTime,AirTime,TaxiIn,TaxiOut,Cancelled,CancellationCode))
sample_data<-rbind(data1,data2)
