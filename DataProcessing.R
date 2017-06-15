#-------------------------------------------------------------------------------------------------------------------------#
# This file is to split the data manually generated into training and test data.                                          #
#                                                                                                                         #
# Classifier - SVM Linear Model  & Logistic Regression                                                                    #
# Data : Generated for specific Size and Probability                                                                      # 
#                                                                                                                         #
# Note: please install the packages below before running the code BY REMOVING '#' infront of it                           #
#install.packages('e1071')                                                                                                #
#install.packages('caTools')                                                                                              #                 
#-------------------------------------------------------------------------------------------------------------------------#

source("E:/edu/Spring 2017/ML project NEW/src/DataGen.R")
library(caTools)
library(e1071)

#Creating the data to develop a model


#loop to repeat the operations on the data with different probabilities


#db.class - data generated for given size based on bernoulli distribution
db.class <- rbinom(data_size,1,prob_index)

#framing into a proper data set
exdata <- cbind(db.feature(data_size,l_prob,m_prob,h_prob),db.class)
dataset <- as.data.frame(exdata)
colnames(dataset) <- cbind('Low Risk', 'Medium Risk', 'High Risk', 'Claim') 

#Splitting the data into training and test set


set.seed(5)

#training set - 70%
#test set - 30%
split = sample.split(dataset$Claim, SplitRatio = 0.70 )
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

#-------------------END of Data Preprocessing--------------------------


