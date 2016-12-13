#To create a delay of a particular flight over a period of 1 month
month <- 1
flightnum <- 67
crsdeptime <- 1800
mfd_data <- DT2006[ which(DT2006$FlightNum==67 & DT2006$CRSDepTime==1800 & DT2006$Month==1), ]
plot(mfd_data$DepDelay ~ mfd_data$DayofMonth, type = "l", main = paste("Flight=", flightnum, " Month=", month, "CRSDepTime=", crsdeptime), ylab = "DepDelay", xlab = "Day of month")
