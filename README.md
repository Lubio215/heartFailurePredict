# heartFailurePredict: A Heart Failure Prediction Tool Based on Random Forest

This is an R package for heart failure risk prediction, built on the random forest algorithm. It can quickly predict the risk of heart failure by inputting patients' clinical features, returning classification results (not probabilities) as required.

## Installation
Install the latest version from GitHub (requires the `remotes` package):
```r
# Install dependency package
install.packages("remotes")

# Install the heartFailurePredict package
remotes::install_github("Lubio215/heartFailurePredict")

# Load the package
library(heartFailurePredict)

#' 1. Load Built-in Dataset
#' The package includes a built-in dataset `heart_data` with patient clinical features and heart failure labels:
# Load the dataset
data(heart_data)

# View dataset structure (confirm feature columns)
str(heart_data)

# Extract feature columns (remove the target variable column: HeartFailure)
input_features <- heart_data[, -which(colnames(heart_data) == "HeartFailure")]

#' 2. Make Predictions
#' Use the exported `predict_heart_failure` function to get classification results (NoFailure/Failure):
# Call the prediction function (input must be a data.frame)
predictions <- predict_heart_failure(input_features)

# View the first 10 prediction results
head(predictions, 10)

# Count the distribution of prediction results
table(predictions)

#' Example Output
#' ------------------------------
# First 10 predictions
# [1] NoFailure NoFailure NoFailure Failure  NoFailure NoFailure NoFailure NoFailure Failure  NoFailure
# Levels: NoFailure Failure

# Result distribution
# predictions
# NoFailure    Failure 
#       412        406 
