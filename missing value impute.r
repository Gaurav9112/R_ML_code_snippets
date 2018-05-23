train_cont<-subset(train,select=c(ID,Age,Hours.Per.Week)
train_cat<-subset(train,select=-c(ID,Age,Hours.Per.Week))

###############3 Categorical-Categorical Aanalysis ###############33

library("gmodels")
CrossTable(train$Sex, train$Income.Group)

ggplot(train, aes(Sex, fill=Income.Group)) + geom_bar() + labs(title = "Stacked Bar Chart" , x="Sex", y="Count") + theme_bw() 

##########3 continuous- continuous analysis ################33
#########3 scatter chart

###########3 Categorial continuous Evaluation ####################
 ggplot(train, aes(Sex,Hours.Per.Week)) + geom_boxplot() + labs(title = "BoxPlot")
 
 
########## Impute Missing Values
library(mlr)
######### impute missing values with mode ##############
imputed_data<-impute(train,classes=list(factor = imputeMode))
########3 update ##################
train<-imputed_data$data

######### impute missing values with mode ##############
imputed_data<-impute(test,classes=list(factor = imputeMode))
########3 update ##################
test<-imputed_data$data
