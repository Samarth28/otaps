data_2007 <- read.csv("~/Documents/PBL/Data/2007.csv", header = TRUE)
data_2007 <- na.omit(data_2007)
data_2007 <- data_2007[data_2007$Origin == "ORD", ]
data_2007 <- data_2007[data_2007$UniqueCarrier == "AA", ]

data_2006 <- read.csv("~/Documents/PBL/Data/2006.csv", header = TRUE)
data_2006 <- na.omit(data_2006)
data_2006 <- data_2006[data_2006$Origin == "ORD", ]
data_2006 <- data_2006[data_2006$UniqueCarrier == "AA", ]

#2007 Data
#   7453215   Actual
#   7275288   na.omit
#    358462   ORD - Origin
#     72137   AA - UniqueCarrier

#2006 Data
#   7141922   Actual
#   7003802   na.omit
#    360055   ORD - Origin
#     74753   AA - UniqueCarrier

data_2007$UniqueCarrier <- NULL
data_2007$TailNum <- NULL
data_2007$CancellationCode <- NULL
data_2007$Cancelled <- NULL
data_2007$Diverted <- NULL

library("data.table")
DT2007 <- data.table(data_2007)
DT2006 <- data.table(data_2006)
