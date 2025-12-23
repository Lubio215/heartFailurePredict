#' Predict Heart Failure Outcome
#'
#' This function takes a data.frame of patient features and returns the predicted
#' heart failure outcome (classification result, not probability).
#'
#' @param data A data.frame containing all required feature columns for prediction.
#'   The columns must match the features used to train the model (e.g., age, ejection_fraction, serum_creatinine, etc.).
#' @return A character vector of predicted outcomes (e.g., "Heart Failure" / "No Heart Failure").
#' @export
#' @examples
#' # Create sample input data (adjust columns to match your model!)
#' sample_data <- data.frame(
#'   age = c(65, 72),
#'   ejection_fraction = c(35, 25),
#'   serum_creatinine = c(1.2, 2.5),
#'   anaemia = c("No", "Yes"),
#'   diabetes = c("Yes", "No")
#' )
#' # Get predictions
#' predictions <- predict_heart_failure(sample_data)
#' print(predictions)
predict_heart_failure <- function(data) {
  # 1. Check if input is a data.frame
  if (!is.data.frame(data)) {
    stop("Error: Input must be a valid data.frame!", call. = FALSE)
  }

  # 2. Load the trained model (only need to modify the model file name here!)
  model_path <- system.file("models", "heart_failure_model.rds", package = "heartFailurePredict")
  if (model_path == "") {
    stop("Error: Trained model file not found in the package!", call. = FALSE)
  }
  trained_model <- readRDS(model_path)

  # 3. Generate classification prediction results (not probabilities)
  predictions <- predict(trained_model, newdata = data, type = "class")

  # 4. Return the results
  return(as.character(predictions))
}
