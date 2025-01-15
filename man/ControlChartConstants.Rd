\name{ControlChartConstants}
\alias{ControlChartConstants}
\docType{data}
\title{
A dataframe of Control Chart Constants
}
\description{
Control Chart Constants \eqn{\delta_1, \delta_2, \delta_3}
are used to calculate control chart upper and lower control limits for
\eqn{2*\sigma., 2*sigma}
}
\usage{data("ControlChartConstants")}
\format{
  A data frame with 30 observations on the following 7 variables.
  \describe{
    \item{\code{n}}{a numeric vector}
    \item{\code{Delta1}}{a numeric vector}
    \item{\code{Delta1SE}}{a numeric vector}
    \item{\code{Delta2}}{a numeric vector}
    \item{\code{Delta2SE}}{a numeric vector}
    \item{\code{Delta3}}{a numeric vector}
    \item{\code{Delta3SE}}{a numeric vector}
  }
}
\details{
Table 4.17. A simulation or Monte Carlo technique is used to calculate the constants for each value of n.
The table may differ slightly each time it is regenerated.
}
\source{
Mehrotra, Sanjay, Kevin Bui, and Hari Balasubramanian (2024). Healthcare Engineering,
Analytics, and Decision Sciences: An Introduction. December 11, 2024.
(https://sites.google.com/view/healthcareengineering/) Chapter 4
}
%\references{
%%  ~~ possibly secondary sources and usages ~~
%}
\examples{
data(ControlChartConstants)
}
\keyword{datasets}
