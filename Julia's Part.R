##Julia Question#3
##First set to the correct working directory
##Give the data file a variable name and open it in R studio 
setwd("~/Desktop/Bus111a")
pilgrimDB = read.csv("PilgrimData.csv")
View(pilgrimDB)


##Calculate the mean of the income, age, profit, and tenure
mean_income = mean(pilgrimDB$Income..1999., na.rm=TRUE)
mean_income
mean_age = mean(pilgrimDB$Age..1999., na.rm=TRUE)
mean_age
mean_profit1999 = mean(pilgrimDB$Profit..1999.)
mean_profit1999
mean_profit2000 = mean(pilgrimDB$Profit..2000., na.rm=TRUE)
mean_profit2000
mean_tenure = mean(pilgrimDB$Tenure..1999.)
mean_tenure

##Calculate the median of the income, age, profit, and tenure 
median_income = median(pilgrimDB$Income..1999., na.rm =TRUE)
median_income
median_age = median(pilgrimDB$Age..1999., na.rm=TRUE)
median_age
median_profit1999 = median(pilgrimDB$Profit..1999., na.rm=TRUE)
median_profit1999
median_profit2000 = median(pilgrimDB$Profit..2000, na.rm=TRUE)
median_profit2000
median_tenure = median(pilgrimDB$Tenure..1999., na.rm=TRUE)
median_tenure

##Calculate the mode of billpay and online usage 
##First calculate the mode of online usage in 1999
online_1999 = table(as.vector(pilgrimDB$Online..1999.))
online_1999
names(online_1999)[online_1999==max(online_1999)]
mode_online1999=names(online_1999)[online_1999==max(online_1999)]
mode_online1999

##Calculate the mode of online usage in 2000
online_2000 =table(as.vector(pilgrimDB$Online..2000.))
online_2000
names(online_2000) [online_2000==max(online_2000)]
mode_online2000=names(online_2000) [online_2000==max(online_2000)]
mode_online2000

##Calculate the mode of billpay usgae in 1999
billpay_1999= table(as.vector(pilgrimDB$Billpay..1999.))
billpay_1999
names(billpay_1999)[billpay_1999==max(billpay_1999)]
mode_billpay1999=names(billpay_1999)[billpay_1999==max(billpay_1999)]
mode_billpay1999

##Calculate the billpay usage in 2000
billpay_2000=table(as.vector(pilgrimDB$Billpay..2000.))
billpay_2000
names(billpay_2000)[billpay_2000==max(billpay_2000)]
mode_billpay2000= names(billpay_2000)[billpay_2000==max(billpay_2000)]
mode_billpay2000


##Calculate the standard deviation of age, income, tenure, and profit 
sd_age=sd(pilgrimDB$Age..1999.,na.rm = TRUE)
sd_age
sd_income=sd(pilgrimDB$Income..1999., na.rm=TRUE)
sd_income
sd_tenure=sd(pilgrimDB$Tenure..1999.,na.rm = TRUE)
sd_tenure
sd_profit1999=sd(pilgrimDB$Profit..1999., na.rm = TRUE)
sd_profit1999
sd_profit2000=sd(pilgrimDB$Profit..2000., na.rm = TRUE)
sd_profit2000

##PLace the calculations into a table 
##Arrange the values as a matrix and place them into a table 
pilgrimtable = matrix(c(4.05,4,"na",1.64,5.46,6,"na",2.35,111.50,9,"na",272.84,
                        144.83,23,"na",389.99,10.16,7.41,"na",8.45,"na","na",0,
                        "na","na","na",0,"na","na","na",0,"na","na","na",0,"na"), 
                      ncol =9, byrow = FALSE)
colnames(pilgrimtable) = c("Age", "Income", "Profit1999", "Profit2000", 
                           "Tenure", "Billpay1999", "Billpay2000", 
                           "Online1999", "Online2000") 
rownames(pilgrimtable) = c("mean", "median", "mode", "standard deviation")
pilgrimtable=as.table(pilgrimtable)
pilgrimtable
