Pilgrim2000_Profit = PilgrimData_Omit[, c(1,2,3,5,7,9,11)]
Pilgrim2000_Profit$Tenure..1999. = PilgrimData_Omit$Tenure..1999.+1

### We had to change the names of the columns to match the names of the coefficients in the regression, but in this table, Profit, online, and billpay 1999 are actually 2000.
colnames(Pilgrim2000_Profit)[5] = "Profit..1999."
colnames(Pilgrim2000_Profit)[6] = "Online..1999."
colnames(Pilgrim2000_Profit)[7] = "Billpay..1999."
View(Pilgrim2000_Profit)
### Root mean squared error of predicted profit and actual profit 2000
Pilgrim2000_Profit$Predicted_Profit = predict(poly_onlineandprofit2,Pilgrim2000_Profit)
install.packages('Metrics')
library(Metrics)
rmse(PilgrimData_Omit$Profit..2000., Pilgrim2000_Profit$Predicted_Profit)
### T test of predicted customer tenure from poly model
Pilgrim2000_Profit$Predicted_Tenure = predict(poly_onlineandtenure2,Pilgrim2000_Profit)
rmse(Pilgrim2000_Profit$Tenure..1999., Pilgrim2000_Profit$Predicted_Tenure)

### Summary tables for 2000 Profit and Tenure
summary(PilgrimData_Omit$Profit..2000.)
summary(Pilgrim2000_Profit$Tenure..1999.)