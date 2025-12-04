# Author: Subash Neupane; Date: Augn28, 2025; Purpose: Test simple linear regression

# Dummy dataset
cars <- mtcars

# Scatter plot on training data
scatter.smooth(x=cars$mpg, y=cars$disp, main ='SpeedVSdistance')

# Calculate correlation value between mpg and disp
cor(cars$mpg, cars$disp)

# Split training and testing set
training_data <- cars[1:16,]
test_data <- cars[17:32,]

#Build a regression model
regression_result <- lm(mpg ~ disp, data=training_data)


prediction_result <- predict(regression_result, test_data)


actual_prediction_values <- data.frame(cbind(actuals=training_data$mpg, predicteds= prediction_result))