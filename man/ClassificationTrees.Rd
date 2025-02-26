\name{ClassificationTrees}
\alias{ClassificationTrees}
\docType{data}
\title{
Dataset with Healthcare Data relating Age, Chronic Conditions and Costs
}
\description{
Age, Count of Chronic Conditions and Costs
}
\usage{data("ClassificationTrees")}
\format{
  A data frame with 32846 observations on the following 3 variables.
  \describe{
    \item{\code{CONDITIONCOUNT}}{a numeric vector, integer number of chronic conditions}
    \item{\code{Age}}{a numeric vector, integer age (years)}
    \item{\samp{YCosts80pct}}{a numeric vector, binary, 1 = patient had healthcare costs higher than 80th percentile,
    0 - not}
  }
}
\details{
Age and Count of Chronic Conditions (CONDITIONCOUNT)– and a binary response variable that indicates whether a patient had healthcare
costs higher than the 80th percentiles (1 if yes, 0 if no).
}
\source{
Page 357 of HEADS text.
}
\references{
Mehrotra, Sanjay, Kevin Bui, and Hari Balasubramanian (2024). Healthcare Engineering,
Analytics, and Decision Sciences: An Introduction. December 11, 2024. Chapter 8.
}
\examples{
data(ClassificationTrees)
}
\keyword{datasets}
