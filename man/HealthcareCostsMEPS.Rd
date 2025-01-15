\name{HealthcareCostsMEPS}
\alias{HealthcareCostsMEPS}
\docType{data}
\title{
Data from the 2010 Medical Expenditure
Panel Survey
}
\description{
Data from the 2010 Medical Expenditure
Panel Survey released by the Agency of Healthcare Quality and Research (AHRQ). The data file is
named HealthcareCostsMEPS.csv and can be found in the data folder.
}
\usage{data("HealthcareCostsMEPS")}
\format{
  A data frame with 32846 observations on the following 28 variables.
  \describe{
    \item{\code{DUPERSID}}{a numeric vector, integer subject ID}
    \item{\code{SEX}}{a numeric vector, 1 for MALE and 2 for FEMALE}
    \item{\code{RACE}}{a numeric vector, 1 WHITE - NO OTHER RACE REPORTED,
    2 BLACK - NO OTHER RACE REPORTED,
    3 AMER INDIAN/ALASKA NATIVE - NO OTH RAC,
    4 ASIAN - NO OTHER RACE REPORTED,
    5 NATIVE HAWAIIAN/PACIFIC ISLANDER-NO OTHR,
    6 MULTIPLE RACES REPORTED
    }
    \item{\code{FAMINC10}}{a numeric vector, Annual family income (2010) (dollars)}
    \item{\code{CONDITIONCOUNT}}{a numeric vector, count of the number of medical conditions;
    For the purposes of this
    dataset, medical conditions refer to 20 common chronic conditions in the United States, listed (if you
    use Excel to open the data file) from column I- column AB. Each medical condition is provided with a
    name that should be intuitive to understand.
    }
    \item{\code{AGE}}{a numeric vector, Age of the surveyed individual (years)}
    \item{\code{HEALTHCOSTS}}{a numeric vector, Annual (2010) total health expenditures for the surveyed individual (dollars)}
    \item{\code{WEIGHT}}{a numeric vector, Weight indicates how representative a single individual is of the US population}
    \item{\code{SPONDYLOSISBACKPROBLEMS}}{a numeric vector}
    \item{\code{JOINTDISORDERS}}{a numeric vector}
    \item{\code{DEPRESSIONBIPOLAR}}{a numeric vector}
    \item{\code{HYPERTENSION}}{a numeric vector}
    \item{\code{ANXIETYDISORDER}}{a numeric vector}
    \item{\code{DIABETES}}{a numeric vector}
    \item{\code{CONNECTIVETISSUEDISEASE}}{a numeric vector}
    \item{\code{HIGHCHOLESTEROL}}{a numeric vector}
    \item{\code{COPD}}{a numeric vector}
    \item{\code{RHEUMATOIDARTHRITIS}}{a numeric vector}
    \item{\code{UPPERRESPINFECTIONS}}{a numeric vector}
    \item{\code{ADHD}}{a numeric vector}
    \item{\code{UPPERRESPDISEASE}}{a numeric vector}
    \item{\code{HEADACHESMIGRAINE}}{a numeric vector}
    \item{\code{NERVOUSSYSTEMDISORDERS}}{a numeric vector}
    \item{\code{ASTHMA}}{a numeric vector}
    \item{\code{KIDNEYDISEASE}}{a numeric vector}
    \item{\code{OSTEOARTHRITIS}}{a numeric vector}
    \item{\code{KIDNEYFAILURE}}{a numeric vector}
    \item{\code{HEARTDISEASE}}{a numeric vector}
  }
}
\details{
20 Columns for Chronic Conditions: 20 commonly observed chronic conditions are listed. Each has its
own column. Each condition has a name that should be intuitive - for example JOINTDISORDERS
and DIABETES. 1 indicates that an individual has that condition and 0 indicates that the person does
not have the condition.
}
\source{
(https://drive.google.com/file/d/1tQbNdSIXZ4pmYWPPqFqSBi6VcEM8JE4M/view)
}
\references{
Mehrotra, Sanjay, Kevin Bui, and Hari Balasubramanian (2024). Healthcare Engineering,
Analytics, and Decision Sciences: An Introduction. December 11, 2024.
(https://sites.google.com/view/healthcareengineering/), Chapter 5.
}
\examples{
data(HealthcareCostsMEPS)
## maybe str(HealthcareCostsMEPS) ; plot(HealthcareCostsMEPS) ...
}
\keyword{datasets}
