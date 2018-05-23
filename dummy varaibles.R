#--- create dummy variables---#
library(dummies)
data.imputed<- dummy.data.frame(data_imputed, sep = ".")

train_imputed<-data.imputed[1:nrow(train),]
test_imputed<-data.imputed[-(1:nrow(train)),]


train_imputed$P<-train$P