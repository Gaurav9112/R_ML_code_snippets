#class of data
sapply(train, class)

library(gmodels)
############### Recoding Training Dataset  #########3
train$Workclass<-recode(train$Workclass, "c('State-gov','Without-pay','Self-emp-inc', 'Never-Worked', 'Local-gov')='Others'")
as.matrix(prop.table(table(train$Workclass)))

hist(train$Hours.Per.Week,breaks=5)