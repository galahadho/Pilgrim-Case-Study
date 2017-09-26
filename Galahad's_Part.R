#Frequency Distribution of Online Banking (1999/2000)
table(pilgrimDB$Online..1999.)
sum(table(pilgrimDB$Online..1999.))
barplot(table(pilgrimDB$Online..1999.)*100/31634, col = "black", 
        main = "Percentage of Online Banking Usage (1999)", 
        xlab = "Use of Online Banking", ylab = "Percentage", 
        ylim = range(0:100))
table(pilgrimDB$Online..2000.)
sum(table(pilgrimDB$Online..2000.))
barplot(table(pilgrimDB$Online..2000.)*100/26415, col = "black", 
        main = "Percentage of Online Banking Usage (2000)", 
        xlab = "Use of Online Banking", ylab = "Percentage", 
        ylim = range(0:100))

#Frequency Distribution of Bill Pay (1999/2000)
table(pilgrimDB$Billpay..1999.)
barplot(table(pilgrimDB$Billpay..1999.)*100/31634, col = "black", 
        main = "Percentage of Bill Pay Usage (1999)", 
        xlab = "Use of Bill Pay", ylab = "Percentage", 
        ylim = range(0:100))
table(pilgrimDB$Billpay..2000.)
barplot(table(pilgrimDB$Billpay..2000.)*100/26415, col = "black", 
        main = "Percentage of Bill Pay Usage (2000)", 
        xlab = "Use of Bill Pay", ylab = "Percentage", 
        ylim = range(0:100))

#Description of Age 1999
summary(pilgrimDB$Age..1999.)
sum(table(pilgrimDB$Age..1999.))
round(table(pilgrimDB$Age..1999.)*100/23345, digits = 1)
barplot(round(table(pilgrimDB$Age..1999.)*100/23345, digits = 1) , 
        col = "black", main = "Percentage Frequency of Age (1999)", 
        xlab = "Age Group", ylab = "Percentage", ylim = range(0:30))

#Description of Income 1999
summary(pilgrimDB$Income..1999.)
sum(table(pilgrimDB$Income..1999.))
round(table(pilgrimDB$Income..1999.)*100/23345, digits = 1)
barplot(round(table(pilgrimDB$Income..1999.)*100/23345, digits = 1) , 
        col = "black", main = "Percentage of Income (1999)", 
        xlab = "Income Group", ylab = "Percentage", ylim = range(0:30))

#Description of Profit (1999/2000)?
boxplot(pilgrimDB$Profit..1999.~pilgrimDB$District..1999., 
        main = "Boxplot of Profit 1999 by Districts", 
        xlab = "Districts", ylab = "Profit ($)")
boxplot(pilgrimDB$Profit..2000.~pilgrimDB$District..1999., 
        main = "Boxplot of Profit 2000 by Districts", xlab = "Districts",
        ylab = "Profit ($)", ylim = range(-1000:5000))

#Description of District
table(pilgrimDB$District..1999.)
barplot(table(pilgrimDB$District..1999.) , col = "black", 
        main = "Frequency of District (1999)", xlab = "District", 
        ylab = "Count (#)")

#Description of Tenure
boxplot(pilgrimDB$Tenure..1999.~pilgrimDB$District..1999., 
        main = "Boxplot of Tenure 1999 by Districts", 
        xlab = "Districts", ylab = "Tenure (Years)")
