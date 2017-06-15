# prob_ind - this will vary the parbability and help to create different data based on that  
# 

library(caret)
library(xlsx)
data_size = 1000

#dlimit = 10500


while(data_size < dlimit){
  cm_summary <- cbind("Probability", "Sensitivity", "Specificity")
  prob_index = 0.05
  plimit = 0.8
  l_prob = 0.6
  m_prob = 0.3
  h_prob = 0.1
    while(prob_index < plimit){
    
        countOne = 0
      source(file = "E:/edu/Spring 2017/ML project NEW/src/DataProcessing.R")
        
      #source(file="E:/edu/Spring 2017/ML project NEW/src/svm_linear.R")
      
      decide_fact = 0.2
      source(file = "E:/edu/Spring 2017/ML project NEW/src/logit_reg.R")
      
      confusionMatrix(y_pred, test_set[,4])
      myCM <- confusionMatrix(y_pred, test_set[,4])
      
      local_summary <- cbind(prob_index, myCM$byClass['Sensitivity'], myCM$byClass['Specificity'])
      cm_summary <- rbind(cm_summary,local_summary)
      
      prob_index <- prob_index+0.01
    
    }
  
   cm_summary #<- as.data.frame(cm_summary)
  
  filename <- paste("LRdata",data_size, sep="_")
  filename <- paste(filename, ".xlsx", sep="")
  filepath <- paste("E:/edu/Spring 2017/ML project NEW/src/", filename, sep="")
  write.xlsx(cm_summary, filepath)
  data_size <- data_size+500
}
