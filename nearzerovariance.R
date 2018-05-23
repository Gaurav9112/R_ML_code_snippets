# # # Remove Near Zero  Variance Variables ############################
train2 <- nearZeroVar(train1, saveMetrics = T)
nzv_T <- which(train2$nzv == T)
train1 <- train1[,-(nzv_T)]
test2<-test1[(colnames(test1) %in% (colnames(train1)))]