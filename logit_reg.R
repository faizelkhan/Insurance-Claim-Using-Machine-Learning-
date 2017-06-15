
#-----------------------------------------------------------------------------------------
#                         CLASSIFICATION MODEL
#-----------------------------------------------------------------------------------------

# ---- CLASSIFIER - Logistic Regression
classifier = glm(formula = Claim ~ ., family = binomial, data = training_set)
# ---- Predicting the Test set results  
prob_pred = predict(classifier, type = 'response', newdata = test_set[,-4])
y_pred = ifelse(prob_pred > decide_fact, 1, 0)
# ----
