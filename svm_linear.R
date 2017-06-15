
#-----------------------------------------------------------------------------------------
#                         CLASSIFICATION MODEL
#-----------------------------------------------------------------------------------------
# ---- CLASSIFIER -   svm Linear Model
classifier = svm(formula = Claim ~ ., data = training_set, type = 'C-classification', kernel = 'linear')
# ---- Predicting the results
y_pred = predict(classifier, newdata = test_set[,-4])
# ----
