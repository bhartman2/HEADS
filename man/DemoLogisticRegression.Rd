\name{DemoLogisticRegression}
\alias{DemoLogisticRegression}
\docType{data}
\title{
Logistics data for a demo of logistic regression and svm
}
\description{
A small dataset with just 3 columns.
}
\usage{data("DemoLogisticRegression")}
\format{
  A data frame with 24 observations on the following 3 variables.
  \describe{
    \item{\code{Flight}}{a character vector, code for the flight number}
    \item{\code{Temp}}{a numeric vector, recorded temperature, (degreees F)}
    \item{\code{Damage}}{a character vector, did damage occur? "NO" or "YES"}
  }
}
\details{
Dataset is very simple.
}
\source{
Page 358 of HEADS text.
}
\references{
Mehrotra, Sanjay, Kevin Bui, and Hari Balasubramanian (2024). Healthcare Engineering,
Analytics, and Decision Sciences: An Introduction. December 11, 2024. Chapter 8.
}
\examples{
data(DemoLogisticRegression)
boxplot(Temp~Damage, data=DemoLogisticRegression)
}
\keyword{datasets}
