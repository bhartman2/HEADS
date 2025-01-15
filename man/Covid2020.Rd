\name{Covid2020}
\alias{Covid2020}
\docType{data}
\title{
Covid data from NY for March through October 2020.
}
\description{
gives daily count on the number of Covid-19 cases, the number of hospitalizations
and the number of deaths in NYC from 02/29/2020 through 10/06/2020 [187]. An announcement was
made by Governor Cuomo on 03/15/20 that New York City schools will close starting next day.}
\usage{data("Covid2020")}
\format{
  A data frame with 222 observations on the following 5 variables.
  \describe{
    \item{\code{Index}}{a numeric vector, observation number.}
    \item{\code{DATE_OF_INTEREST}}{a character vector, date in format "mm/dd/YYYY"}
    \item{\code{Cases}}{a numeric vector, integer number of cases}
    \item{\code{Hospitalizations}}{a numeric vector, integer number of hospitalizations}
    \item{\code{Deaths}}{a numeric vector, integer number of deaths}
  }
}
\details{
An announcement was
made by Governor Cuomo on 03/15/20 that New York City schools will close starting next day. Your
goal is to analyze this data to demonstrate the impact of lock-down announced in the city.
}
\source{
NYC-Covid. (2020) Covid-19:Data. (https://www1.nyc.gov/site/doh/covid/covid-19-data.page) Accessed: 2020-10-08.
}
\references{
Mehrotra, Sanjay, Kevin Bui, and Hari Balasubramanian (2024). Healthcare Engineering,
Analytics, and Decision Sciences: An Introduction. December 11, 2024.
(https://sites.google.com/view/healthcareengineering/), Chapter 5.}
\examples{
data(Covid2020)
}
\keyword{datasets}
