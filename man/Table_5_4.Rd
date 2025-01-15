\name{Table_5_4}
\alias{Table_5_4}
\docType{data}
\title{
Kidney Transplant Wait times and Ethnicity
}
\description{
We have data consisting of 30 kidney transplant recipients.
The data
includes the patients’ ethnicity and waiting time.
Ethnicity in this case has two values: Latino and non-Latino.}
\usage{data("Table_5_4")}
\format{
  A data frame with 30 observations on the following 2 variables.
  \describe{
    \item{\code{Ethnicity}}{a character vector with 2 values; "Latino" and "Non-Latino"}
    \item{\code{WaitingTime}}{a numeric vector, waiting time (days)}
  }
}
\details{
This is Table 5.4 in [Mehrotra et al. (2024)](#r1)}
\source{
Mehrotra, Sanjay, Kevin Bui, and Hari Balasubramanian (2024). Healthcare Engineering,
Analytics, and Decision Sciences: An Introduction. December 11, 2024.
(https://sites.google.com/view/healthcareengineering/), Chapter 5.
}
%% \references{
%%  ~~ possibly secondary sources and usages ~~
%% }
\examples{
data(Table_5_4)
}
\keyword{datasets}
