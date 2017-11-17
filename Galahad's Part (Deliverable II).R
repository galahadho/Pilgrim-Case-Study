
### Questions #3
summary(is.na(PilgrimData))
PilgrimData_Omit = na.omit(PilgrimData)
summary(is.na(PilgrimData_Omit))

### Regression of Online 1999 Use VS Profit and Retention
profit_lm = lm(PilgrimData$Profit..1999.~factor(PilgrimData$Online..1999.))
summary(profit_lm)

retention_lm = lm(PilgrimData$Tenure..1999.~factor(PilgrimData$Online..1999.))
summary(retention_lm)

