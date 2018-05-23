#Calculate correlation matrix
correlationMatrix <- cor(train.data)
# find attributes that are highly corrected (ideally >0.75)
highlyCorrelated <- findCorrelation(correlationMatrix, cutoff=0.75)

unselected<- names(train.data[,highlyCorrelated])

selected<-names(train.data[,-highlyCorrelated])
train.data<-train.data[colnames(train.data) %in% selected ]
test.data<-test2[(colnames(test2) %in% (colnames(train.data)))]