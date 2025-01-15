\name{PrescriptionsData}
\alias{PrescriptionsData}
\docType{data}
\title{
Number of Prescriptions for a given medication for a year
}
\description{
The weekly number
of prescriptions written for a given medication (Medication A) is given throughout a year. At the
beginning of Week 21, a competing medication (Medication B) is introduced.
}
\usage{data("PrescriptionsData")}
\format{
  A data frame with 52 observations on the following 2 variables.
  \describe{
    \item{\code{Week}}{a numeric vector, integer week of the year}
    \item{\code{Prescriptions}}{a numeric vector, number of prescriptions written}
  }
}
\details{
LinearRegression_PrescriptionsData.xlsx}
\source{
Mehrotra, Sanjay, Kevin Bui, and Hari Balasubramanian (2024). Healthcare Engineering,
Analytics, and Decision Sciences: An Introduction. December 11, 2024.
(https://sites.google.com/view/healthcareengineering/), Chapter 5.
}
%\references{
%%  ~~ possibly secondary sources and usages ~~
%}
\examples{
data(PrescriptionsData)
}
\keyword{datasets}
