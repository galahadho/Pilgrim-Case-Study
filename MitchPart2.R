### Mitch Interim Deliverable 2

### Loads the data set into R and displays it. 
PilgrimData = read.csv("PilgrimData.csv")
View(PilgrimData)
PilgrimData_Omit = na.omit(PilgrimData)

### We run t tests comparing the profitability 
### between non-online users and online users for 1999
t.test(PilgrimData_Omit[PilgrimData_Omit$Online..1999. == 0,]$Profit..1999., 
       PilgrimData_Omit[PilgrimData_Omit$Online..1999. == 1,]$Profit..1999., 
       alternative = "less")

### We run t tests comparing the profitability 
### between non-online users and online users for 2000
t.test(PilgrimData_Omit[PilgrimData_Omit$Online..2000. == 0,]$Profit..2000., 
       PilgrimData_Omit[PilgrimData_Omit$Online..2000. == 1,]$Profit..2000., 
       alternative = "less")

### We run t tests comparing the profitability 
### between non-billpay users and billpay users for 1999
t.test(PilgrimData_Omit[PilgrimData_Omit$Billpay..1999. == 0,]$Profit..1999., 
       PilgrimData_Omit[PilgrimData_Omit$Billpay..1999. == 1,]$Profit..1999., 
       alternative = "less")

### We run t tests comparing the profitability 
### between non-billpay users and billpay users for 2000
t.test(PilgrimData_Omit[PilgrimData_Omit$Billpay..2000. == 0,]$Profit..2000., 
       PilgrimData_Omit[PilgrimData_Omit$Billpay..2000. == 1,]$Profit..2000., 
       alternative = "less")
