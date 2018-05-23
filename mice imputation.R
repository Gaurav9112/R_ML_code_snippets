#--- Missing value imputation
#--- remove categorical variables
train.mis <- subset(train, select = -c(P))
data<-rbind(train.mis,test)
md.pattern(data)

imputed_Data <- mice(data, m=5, maxit = 250, seed = 500,printFlag = T)
summary(imputed_Data)

#-- complete the imputation
data_imputed<-complete(imputed_Data)