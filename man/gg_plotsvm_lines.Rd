% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gg_plotsvm.R
\name{gg_plotsvm_lines}
\alias{gg_plotsvm_lines}
\title{gg_plotsvm_lines}
\usage{
gg_plotsvm_lines(model, margin.lines = FALSE)
}
\arguments{
\item{model}{a \code{kernlab::ksvm} model}

\item{margin.lines}{logical, TRUE=plot margins on either side or FALSE=not. Default FALSE.}
}
\value{
a list containing ggplot layers
}
\description{
plots the support plane line and optionally margin lines.
}
\examples{
\dontrun{
require(kernlab)
require(tidyverse)
iris_data <- iris[iris$Species != "setosa", ]
iris_data$Species <- factor(iris_data$Species)
df = iris_data[,c(1,2,5)]
model3 <- kernlab::ksvm(Species ~ ., df, kernel = "vanilladot", scaled=FALSE, C = 1)
gg_plotsvm(model3, df, Sepal.Length, Sepal.Width, color=Species) +
   gg_plotsvm_lines(model3, margin.lines=T )
}
}
