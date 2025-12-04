#Author: Subash; Date: 09/23/2025; Purpose: Test decision trees in R

#install pakage
install.packages("rpart")

library(rpart)

# Loading dummy data
kyphosis <- kyphosis

#create a decision tree
fit <- rpart(Kyphosis ~ Age + Number + Start, method="class", data=
kyphosis)

fit


#Plotting the Result 
plot(fit, main="Classification plot for Kyphosis", uniform=TRUE)
text(fit, use.n=TRUE, all=TRUE, cex=.8)