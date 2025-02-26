# equation for the support plane using svm

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
model <- ksvm(
  Species ~ .,
  data = iris_data[,c(1,2,5)],
  kernel = "vanilladot",
  C = 1
)

# Extract weights (w)
w <- colSums(coef(model)[[1]] * model@xmatrix[[1]])
print(w)

# Extract bias (b)
b <- -model@b
print(b)

obj = model@obj
obj

# Display the equation
cat("Hyperplane equation: ", w[1], "* x1 +", w[2], "* x2 +", b, "= 0\n")

# is the model scaled?
cat("\nScaled? ", ifelse(is.null(model@scaling),"No","Yes"))

# model@xmatrix contains the scaled values of the supporting vectors
# we can convert them to dimension units by mu + sig*z
mu = model@scaling$x.scale$`scaled:center`[1:2]
sig = model@scaling$x.scale$`scaled:scale`[1:2]

# intercept has to be computed from transformed b
# b corresponds to scaled data.
# Extract scaling parameters
mu <- model@scaling$x.scale$"scaled:center"
sigma <- model@scaling$x.scale$"scaled:scale"
# Extract weights
w <- colSums(coef(model)[[1]] * model@xmatrix[[1]])
w
# Extract scaled bias (negative because of internal representation in ksvm)
# Adjust the bias for original scale
adjusted_b <- b - sum((w * mu / sigma) )
adjusted_b

# unscale the xmatrix points
z = model@xmatrix[[1]][,1:2] %>% as.data.frame()
z = z %>%
  mutate(Sepal.Length=Sepal.Length*sigma["Sepal.Length"]
         + mu["Sepal.Length"],
         Sepal.Width=Sepal.Width*sigma["Sepal.Width"]
         + mu["Sepal.Width"])

# Plot data points
# note changed intercept for the line, not right
plot(iris_data[, 1:2], col = as.numeric(iris_data$Species), pch = 19,
     xlab = "Feature 1", ylab = "Feature 2")
# Decision boundary intercept is wrong, needs to be adjusted with bigger b
abline(a = - adjusted_b / w[2], b = -w[1] / w[2], col = "blue")
# Support vectors
points(z, pch = 15, col = "green", cex = .5)

# use my function
df=iris_data[,c(1,2,5)]
gg_plotsvm(model, df,
                    Sepal.Length,
                    Sepal.Width,
                    color=Species) +
  gg_plotsvm_contour(grid=svmgrid(df, model), legend=T) +
  scale_fill_viridis_d("turbo")+
  gg_plotsvm_margin(svmmargin(model), x=5, y=4.5, scaled=T) +
  gg_plotsvm_lines(model, margin.lines=T)




