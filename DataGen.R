
#----------------------------------------------------
#               DATA PREPROCESSING
#
#----------------------------------------------------


#--------------------------------------------------------------------------------------
#db.feature : 1) a function which generates feature data and randomly shuffles them
#             2) returns a matrix of 3 column feature
# Parameters:
#     frow - size of the data
#     ratio.one - ratio of Low Risk Claim
#     ratio.two - ratio of Medium Risk Claim
#     ratio.three - ratio of High Risk Claim

db.feature <- function(frow,ratio.one,ratio.two,ratio.three){
  
  
  
  ratio.one <- ceiling(frow*ratio.one)
  ratio.two <- ceiling(frow*ratio.two)
  ratio.three <- ceiling(frow*ratio.three)
  if(ratio.one==ratio.two && ratio.two==ratio.three)
  {
    frow = 3*ratio.one
  }
  features <- matrix(0,frow,3)
  
  
  
  features[,1] <- c(rep(1,times=ratio.one),rep(0,times=(frow - ratio.one)))  
  
  
  features[,2] <- c(rep(0,times= ratio.one),rep(1,times=(ratio.two)),rep(0, times=(frow -(ratio.one+ratio.two))))  
  
  
  features[,3] <- c(rep(0,times=(ratio.one+ratio.two)),rep(1,times=(ratio.three)))  
  
  count = 1
  
  while(count < 150){  #loop will shuffle the data randomly for the no. of times mentioned in the while condition
    features <- features[sample(nrow(features)),]  #shuffling row-wise
    count <- count +1
  } #end of count loop
  
  
  
  
  return(features)
} #end of function feature
