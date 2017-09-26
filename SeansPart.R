pilgrimDB = read.csv("PilgrimData.csv")
View(pilgrimDB)

#Makes scatter plot of Tenure vs Profit in 1999
plot(pilgrimDB$Profit..1999.~ pilgrimDB$Tenure..1999., main = "Scatter plot of Tenure and Profit in 1999", xlab = "Tenure (Years)", ylab = "Profit ($)")

#Breaks profit values (1999) into 3 levels
pilgrimDB$Profit..1999.Level = "0"
pilgrimDB[pilgrimDB$Profit..1999. <= 0,]$Profit..1999.Level = "Level1"
pilgrimDB[pilgrimDB$Profit..1999. > 0 & pilgrimDB$Profit..1999. <= 1000,]$Profit..1999.Level = "Level2"
pilgrimDB[pilgrimDB$Profit..1999. > 1000,]$Profit..1999.Level = "Level3"
table(pilgrimDB$Profit..1999.Level) 

#Makes pivot table of Age and Profit Levels
AgeProfitPivot = table(pilgrimDB$Age..1999., pilgrimDB$Profit..1999.Level)
AgeProfitPivot

#Makes Pivot table of Onlinepay vs Billpay in 1999 and 2000
OnlinePayBillPay99 = table(pilgrimDB$Online..1999., pilgrimDB$Billpay..1999.)
OnlinePayBillPay00 = table(pilgrimDB$Online..2000., pilgrimDB$Billpay..2000.)
OnlinePayBillPay99
OnlinePayBillPay00

#Makes Pivot table of Income vs Profit Levels in 1999
IncomeProfitPivot = table(pilgrimDB$Income..1999., pilgrimDB$Profit..1999.Level)
IncomeProfitPivot

#Makes Pivot table of Income vs Age in 1999
IncomeAgePivot = table(pilgrimDB$Income..1999., pilgrimDB$Age..1999.)
IncomeAgePivot

