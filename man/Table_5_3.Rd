\name{Table_5_3}
\alias{Table_5_3}
\docType{data}
\title{
Recovery Time (in hours) after Surgery
}
\description{
Patient’s recovery time (in hours) after surgery based on two
factors: the log amount of medicinal dose and the diastolic blood pressure of 53 Patients.
Predicted times are also included.
}
\usage{data("Table_5_3")}
\format{
  A data frame with 53 observations on the following 4 variables.
  \describe{
    \item{\code{LogDose}}{a numeric vector, log of medicinal dose}
    \item{\code{DBP}}{a numeric vector, diastolic Blood Pressure}
    \item{\code{RT}}{a numeric vector, recovery time (hours)}
    \item{\code{PredictedRT}}{a numeric vector, predicted recovery time (hours)}
  }
}
\details{
Table 5.3 on page 140 of [Mehrotra et al. (2024)](#(r1)).
}
\source{
Mehrotra, Sanjay, Kevin Bui, and Hari Balasubramanian (2024). Healthcare Engineering,
Analytics, and Decision Sciences: An Introduction. December 11, 2024.
(https://sites.google.com/view/healthcareengineering/), Chapter 5.
}
\references{
JD Robertson and P Armitage (1959) Comparison of two hypotensive agents. Anaesthesia, 14(1):53–64.
}
\examples{
data(Table_5_3)
}
\keyword{datasets}
