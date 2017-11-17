##Randomize the training data 
randOrder= order(runif(nrow(PilgrimData_Omit)))
trainingPilgrimData_Omit=subset(PilgrimData_Omit,randOrder <.9 * nrow(PilgrimData_Omit))
validationPilgrimData_Omit= subset(PilgrimData_Omit,randOrder >= .9 * nrow(PilgrimData_Omit))
##The modified regressions from question 6, after adding in the variables to control ##for omitted biases 
##First we will look at a linear model 
lm_onlineandprofit2=lm((Profit..1999.)~(Online..1999.)+(Billpay..1999.)+(Tenure..1999.)+factor(Age..1999.)+factor(Income..1999.)+factor(District..1999.), data= trainingPilgrimData_Omit)
##summary(lm_onlineandprofit2)
##Now we calculate the adjusted R-squared, prediction error, AIC,and BIC
adj_r_squared1=summary(lm_onlineandprofit2)$adj.r.squared
adj_r_squared1

predicted.profit=predict(lm_onlineandprofit2, validationPilgrimData_Omit)
predicition.error1=sqrt(mean((predicted.profit-validationPilgrimData_Omit$Profit..1999.)^2))
predicition.error1

AIClm= AIC(lm_onlineandprofit2)
AIClm
BIClm= BIC(lm_onlineandprofit2)
BIClm
##We now comapre profit and online usage using the same omitted variables from above 
##but we use a polynomial model
poly_onlineandprofit2=lm((Profit..1999.)~(Online..1999.)+(Billpay..1999.)+poly(Tenure..1999.,2)+factor(Age..1999.)+factor(Income..1999.)+factor(District..1999.), data= trainingPilgrimData_Omit)
summary(poly_onlineandprofit2)
##We now calculate adjusted R-Squared, predicition error, AIC, and BIC
predicted.profit=predict(poly_onlineandprofit2, validationPilgrimData_Omit)
predicition.error2=sqrt(mean((predicted.profit-validationPilgrimData_Omit$Profit..1999.)^2))
predicition.error2

adj_r_squared2=summary(poly_onlineandprofit2)$adj.r.squared
adj_r_squared2

AICpoly=AIC(poly_onlineandprofit2)
AICpoly
BICpoly=BIC(poly_onlineandprofit2)
BICpoly
##We now compare profit and online chanels using the same omitted variables again but ##use a log model
log_onlineandprofit2=lm((Profit..1999.)~(Online..1999.)+(Billpay..1999.)+log(Tenure..1999.)+factor(Age..1999.)+factor(Income..1999.)+factor(District..1999.), data= trainingPilgrimData_Omit)
##summary(log_onlineandprofit2)
##We now calculate the adjusted R-squared, predicted error, AIC, and BIC 
adj_r_squared3=summary(log_onlineandprofit2)$adj.r.squared
adj_r_squared3

predicted.profit=predict(log_onlineandprofit2, validationPilgrimData_Omit)
predicition.error3=sqrt(mean((predicted.profit-validationPilgrimData_Omit$Profit..1999.)^2))
predicition.error3

AIClog=AIC(log_onlineandprofit2)
AIClog
BIClog=BIC(log_onlineandprofit2)
BIClog
```
For the second regression comparing retention and online usage (orginal found in question 6), we found that district and billpay had no significance and decreased adjusted R-squared so they were not important omitted variables in our regression. Other omitted variables such as profit, income, and age causes adjusted R-squared to go up and were all significant so we add them to our regression. The best second regression compares retention with online usage,factor(age), factor(income), and profit as omitted variables. Additionally we could not use a log model like we did in the first regression because there were no variables that could be logged. 
```{r}
##The modified regressions from question 6, after adding in the variables to control ##for omitted biases 
##First we will look at a linear model 
lm_onlineandtenure2=lm((Tenure..1999.)~(Online..1999.)
                       +(Profit..1999.)+factor(Income..1999.)+factor(Age..1999.)
                       ,data=trainingPilgrimData_Omit)
##summary(lm_onlineandtenure2)
##We now calculate adjusted R-squared, prediction error, AIC, and BIC 
adj_r_squared4=summary(lm_onlineandtenure2)$adj.r.squared 
adj_r_squared4

predicted.profit=predict(lm_onlineandtenure2, validationPilgrimData_Omit)
predicition.error4=sqrt(mean((predicted.profit-validationPilgrimData_Omit$Profit..1999.)^2))
predicition.error4

AIClm2=AIC(lm_onlineandtenure2)
AIClm2
BIClm2=BIC(lm_onlineandtenure2)
BIClm2
##We now comapre profit and online usage using the same omitted variables from above
##but we use a polynomial model
poly_onlineandtenure2=lm((Tenure..1999.)~(Online..1999.) 
                         +poly(Profit..1999.,2)+factor(Income..1999.)+factor(Age..1999.)
                         ,data=trainingPilgrimData_Omit)
summary(poly_onlineandtenure2)

adj_r_squared5=summary(poly_onlineandtenure2)$adj.r.squared
adj_r_squared5

predicted.profit=predict(poly_onlineandtenure2, validationPilgrimData_Omit)
predicition.error5=sqrt(mean((predicted.profit-validationPilgrimData_Omit$Profit..1999.)^2))
predicition.error5

AICpoly2=AIC(poly_onlineandtenure2)
AICpoly2
BICpoly2=BIC(poly_onlineandtenure2)
BICpoly2
```
In looking at the following tables, we concluded that the polynomial model for both regressions was the best model because the adjusted R-squared was higher and the predicted error, AIC and BIC were lower for the polynomial model then the other models. We show the the regression resuts above from both polynomial models. 
```{r}
##Create a table 
##Form into vectors so that the adjusted r-squared, predicted error, AIC and BIC 
##represent each regresion model 
##Profit and Online regressions 
lm1_model=c(adj_r_squared1,predicition.error1,AIClm,BIClm)
poly1_model=c(adj_r_squared2,predicition.error2,AICpoly,BICpoly)
log1_model=c(adj_r_squared3,predicition.error3,AIClog,BIClog)
##Profit and Retention Regressions 
lm2_model=c(adj_r_squared4,predicition.error4,AIClm2,BIClm2)
poly2_model=c(adj_r_squared5,predicition.error5,AICpoly2,BICpoly2)
##Creating the table with the vectors 
##Table with Online and Profit Regression 
pilgrimtable1=rbind(lm1_model,poly1_model,log1_model)
colnames(pilgrimtable1)=c("Adjusted R-Squared","Predicted Error", "AIC","BIC")
pilgrimtable1
##Table with Retension and Profit Regression 
pilgrimtable2=rbind(lm2_model,poly2_model)
colnames(pilgrimtable2)=c("Adjusted R-Squared","Predicted Error", "AIC","BIC")
pilgrimtable2

