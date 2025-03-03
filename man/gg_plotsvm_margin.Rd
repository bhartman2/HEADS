% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gg_plotsvm.R
\name{gg_plotsvm_margin}
\alias{gg_plotsvm_margin}
\title{gg_plotsvm_margin}
\usage{
gg_plotsvm_margin(margin, x, y, scaled = F)
}
\arguments{
\item{margin}{margin value, calculated from svmmargin()}

\item{x}{numeric, x-axis location of text annotation}

\item{y}{numeric, y-axis location of text annotation}

\item{scaled}{logical, default FALSE, is the model scaled}
}
\value{
a list containing ggplot text layer
}
\description{
display margin of an svm model on a ggplot object
}
\examples{
\dontrun{
iris_data <- iris[iris$Species != "setosa", ]
iris_data$Species <- factor(iris_data$Species)
df = iris_data[,c(1,2,5)]
require(kernlab)
require(tidyverse)
model3 <- ksvm(Species ~ ., df, kernel = "vanilladot", scaled=FALSE, C = 1)
gg_plotsvm(model3, df,
              Sepal.Length, Sepal.Width, color=Species) +
   gg_plotsvm_margin(svmmargin(model3), x=8, y=4.5 )
}
}
