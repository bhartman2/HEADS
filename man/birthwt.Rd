\name{birthwt}
\alias{birthwt}
\docType{data}
\title{
Risk Factors Associated with Low Infant Birth Weight
}
\description{
The birthwt data frame has 189 rows and 10 columns.
The data were collected at Baystate Medical Center, Springfield, Mass during 1986.
}
\usage{data("birthwt")}
\format{
  A data frame with 189 observations on the following 10 variables.
  \describe{
    \item{\code{low}}{indicator of birth weight less than 2.5 kg.}
    \item{\code{age}}{mother's age in years.}
    \item{\code{lwt}}{mother's weight in pounds at last menstrual period.}
    \item{\code{race}}{mother's race (1 = white, 2 = black, 3 = other).}
    \item{\code{smoke}}{smoking status during pregnancy.}
    \item{\code{ptl}}{number of previous premature labours.}
    \item{\code{ht}}{history of hypertension.}
    \item{\code{ui}}{presence of uterine irritability.}
    \item{\code{ftv}}{number of physician visits during the first trimester.}
    \item{\code{bwt}}{birth weight in grams.}
  }
}
\details{
This dataset is identical with the dataset \code{MASS::birthwt}}
\source{
Hosmer, D.W. and Lemeshow, S. (1989) Applied Logistic Regression. New York: Wiley

\href{https://CRAN.R-project.org/package=MASS}{MASS package documentation}
}

\references{
Venables, W. N. and Ripley, B. D. (2002) Modern Applied Statistics with S.
Fourth edition. Springer. [Venables and Ripley, 2004](https://www.stats.ox.ac.uk/pub/MASS4/)
}
\examples{
bwt <- with(birthwt, {
race <- factor(race, labels = c("white", "black", "other"))
ptd <- factor(ptl > 0)
ftv <- factor(ftv)
levels(ftv)[-(1:2)] <- "2+"
data.frame(low = factor(low), age, lwt, race, smoke = (smoke > 0),
           ptd, ht = (ht > 0), ui = (ui > 0), ftv)
})
options(contrasts = c("contr.treatment", "contr.poly"))
glm(low ~ ., binomial, bwt)
}
\keyword{datasets}
