# Insurance Claim Using Machine Learning

## Predicting property and casualty insurance claims: A Machine Learning Approach

### Abstract:

Property and Casualty insurance companies often encounter problems in predicting the likelihood of a policyholder causing a claim. 
Some territories have few claim experiences, resulting in very sparse data. In addition, some data are highly dimensional in terms
of the predictors of the likelihood of a claim. 

In this research, simulated sparse claims data are used to identify the most appropriate predictive model for determining the likelihood
of a policyholder causing a claim. Machine learning algorithms such as the logit model and the support vector machine will be used to 
predict whether the future policyholder will incur a claim.


### Presentation Link:
http://prezi.com/2smclr8un8vu/?utm_campaign=share&utm_medium=copy&rc=ex0share


## Data Analysis

### driver.R 
This is the main file of this project. The algorithm in this file requires some external R libraries, which are already mentioned in the
comments in these files. The algorithm also gives us a choice to run either _Support Vector Machine(SVM)_ or _Logistic Regression(LR)_ 
and this can be done by commenting SVM  or LR source file code, respectively.


### DataProcessing.R
This file is to process the generated data and split it into training and test data.
 
### DataGen.R
This file generates the data of specific number of observations and feature ratios. 

### svm_linear.R
The file runs the SVM classification on the training data and then test the classifier on the test data to check the accuracy of the
classifier for the unknown data.

### logit_reg.R
The file runs the LR classification on the training data and then test the classifier on the test data to check the accuracy of the
classifier for the unknown data.
