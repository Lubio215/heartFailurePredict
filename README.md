# heartFailurePredict: A Heart Disease Diagnosis Prediction Tool Based on Random Forest

This is an R package for heart disease diagnosis prediction, built on the random forest algorithm. It can quickly predict the risk of heart disease by inputting patients' clinical features.

## Installation Method
Install the latest version via GitHub:
```r
# Install dependent package
install.packages("remotes")
# Install this package
remotes::install_github("Lubio215/heartFailurePredict")

# Load the package
library(heartFailurePredict)

# Load the built-in dataset (contains patient features and labels)
data(heart_data)

# Extract feature columns (remove the last column of target variable HeartDisease)
input_features <- heart_data[, -ncol(heart_data)]

# Call the prediction function to get classification results
prediction <- predict_heart_disease(input_features)

# View the first 10 prediction results
head(prediction, 10)

# Count the result distribution (number of patients with/no heart disease)
table(prediction)

[1] NoDisease NoDisease NoDisease Disease  NoDisease NoDisease NoDisease NoDisease Disease  NoDisease
Levels: NoDisease Disease

prediction
NoDisease    Disease 
      412        406 
