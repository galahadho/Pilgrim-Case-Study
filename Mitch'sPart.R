### Be sure to set the correct working directory before opening the files
### This opens the dataset within R studio
pilgrimDB = read.csv("PilgrimData.csv")
View(pilgrimDB)

### Analysis of Customer Profitability 1999
### Histogram of Customer Profitability 1999
hist(pilgrimDB$Profit..1999., main = "Histogram of Customer 
     Profitability 1999", xlab = "Profitability", ylab = "Count (#)", 
     col = "blue")
### Density plot of Customer Profitability 1999
plot(density(pilgrimDB$Profit..1999.), main = "Density of Customer 
     Profitability 1999", xlab = "Profitability", ylab = "Frequency")
### Summary of Customer Profitability 1999
summary(pilgrimDB$Profit..1999.)

### Analysis of Customer Profitablility 2000
### Histogram of Customer Profitability 2000
pilgrim.profit.clean = pilgrimDB$Profit..2000.[!is.na(pilgrimDB$Profit..2000.)]
hist(pilgrim.profit.clean, main = "Histogram of Customer 
     Profitability 2000", xlab = "Profitability", ylab = "Frequency",
     col = "blue", n = 100, xlim = range(-1000:3000))
plot(density(pilgrim.profit.clean), main = "Density of Customer 
     Profitability 2000", xlab = "Profitability", ylab = "Frequency",
     xlim = range(-500:3000))
### Summary of Customer Profitability 2000
summary(pilgrimDB$Profit..2000.)

### Analysis of Tenure 1999
### Histogram of Tenure 1999
hist(pilgrimDB$Tenure..1999., main = "Histogram of Tenure of Customers 
     (1999)", xlab = "Tenure (in Years)", ylab = "Count (#)", 
     col = "blue")
### Density plot of Tenure
plot(density(pilgrimDB$Tenure..1999.), main = "Histogram of Tenure of Customers (1999)",
     xlab = "Tenure (in Years)", ylab = "Count (#)")
### Summary of Tenure Variable
summary(pilgrimDB$Tenure..1999.)

#Makes Pivot table of District vs Profit in 1999
DistrictProfitPivot = table(pilgrimDB$District..1999., pilgrimDB$Profit..1999.Level)
DistrictProfitPivot

# Pivot table of Profit in 1999 vs. Billpay in 1999
ProfitBillpayPivot = table(pilgrimDB$Profit..1999.Level,pilgrimDB$Billpay..1999.)
ProfitBillpayPivot

# Pivot table of Profit in 1999 vs. Online in 1999
ProfitOnlinePivot = table(pilgrimDB$Profit..1999.Level,pilgrimDB$Online..1999.)
ProfitOnlinePivot
