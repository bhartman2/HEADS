# equation for the support plane using svm, unscaled!!

# Load kernlab
library(tidyverse)
library(kernlab)

# Example: Use iris dataset (binary classification)
data(iris)
head(iris)
iris_data <- iris[iris$Species != "setosa", ]
iris_data %>% head
iris_data$Species <- factor(iris_data$Species)

# Train a linear SVM
model1 <- ksvm(
  Species ~ .,
  data = iris_data[,c(1,2,5)],
  kernel = "vanilladot",
  scaled=FALSE,
  C = 1
)

# Extract weights (w)
w1 <- colSums(coef(model1)[[1]] * model1@xmatrix[[1]])
print(w1)

# Extract bias (b)
b1 <- -model1@b
print(b1)

obj1 = model1@obj
obj1

# Display the equation
cat("Hyperplane equation: ", w1[1], "* x1 +", w1[2], "* x2 +", b1, "= 0\n")

# is the model scaled?
cat("\nScaled? ", ifelse(is.null(model1@scaling),"NO","YES"))

# Plot data points
plot(iris_data[, 1:2], col = as.numeric(iris_data$Species), pch = 19,
     xlab = "Feature 1", ylab = "Feature 2")
# Decision boundary intercept is wrong, needs to be adjusted with bigger b
abline(a = -b1 / w1[2], b = -w1[1] / w1[2], col = "blue")
# Support vectors
points(model1@xmatrix[[1]], pch = 15, col = "green", cex = .5)

# test the function version
print(svmmargin(model1))

# Plot decision boundary and margins
df1 = iris_data[,c(1,2,5)]
gg_plotsvm(model1, df1,
                    Sepal.Length, Sepal.Width,
                    color=Species) +
  gg_plotsvm_contour(grid=svmgrid(df1, model1), legend=T) +
  gg_plotsvm_lines(model1, margin.lines=T) +
  gg_plotsvm_margin(svmmargin(model1), x=8, y=4.5)
