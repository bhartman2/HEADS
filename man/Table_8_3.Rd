\name{Table_8_3}
\alias{Table_8_3}
\docType{data}
\title{
Diabetes Patient Measurements (10), not linearly separable.
}
\description{
A dataset of 10 patients with their glucose levels, BMIs, and diabetes statuses.
These 10 are not linearly separable.
}
\usage{data("Table_8_3")}
\format{
  A data frame with 10 observations on the following 3 variables.
  \describe{
    \item{\code{GlucoseLevel}}{a numeric vector, glucose level (mg/dL)}
    \item{\code{BMI}}{a numeric vector, Body mass index}
    \item{\code{Diabetes}}{a character vector, "negative" or "positive" for diabetes}
  }
}
\details{
Table 8.3, not linearly separable data
}
\source{
Mehrotra, Sanjay, Kevin Bui, and Hari Balasubramanian (2024). Healthcare Engineering,
Analytics, and Decision Sciences: An Introduction. December 11, 2024.
(https://sites.google.com/view/healthcareengineering/), Chapter 8, page 338
}
%\references{
%%  ~~ possibly secondary sources and usages ~~
%}
\examples{
data(Table_8_3)
}
\keyword{datasets}
