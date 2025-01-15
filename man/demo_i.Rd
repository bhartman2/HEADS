\name{demo_i}
\alias{demo_i}
\docType{data}
\title{
NHANES Demographic Data for 2015
}
\description{
This is NHANES demographic data for 2015.
}
\usage{data("demo_i")}
\format{
  A data frame with 9971 observations on the following 47 variables.
  \describe{
    \item{\code{SEQN}}{a numeric vector, respondent sequence number}
    \item{\code{SDDSRVYR}}{a numeric vector, data release cycle}
    \item{\code{RIDSTATR}}{a numeric vector, interview examination status}
    \item{\code{RIAGENDR}}{a numeric vector, gender}
    \item{\code{RIDAGEYR}}{a numeric vector, age in years at screening}
    \item{\code{RIDAGEMN}}{a numeric vector, age in months at screening, 0-24}
    \item{\code{RIDRETH1}}{a numeric vector, Race/Hispanic Origin}
    \item{\code{RIDRETH3}}{a numeric vector, Race/Hispanic Origin w/ NH Asian}
    \item{\code{RIDEXMON}}{a numeric vector, Six month time period}
    \item{\code{RIDEXAGM}}{a numeric vector, Age in months at exam - 0-19 years}
    \item{\code{DMQMILIZ}}{a numeric vector, Served in active duty in US Armed Forces}
    \item{\code{DMQADFC}}{a numeric vector, Served in a foreign country}
    \item{\code{DMDBORN4}}{a numeric vector, Country of birth}
    \item{\code{DMDCITZN}}{a numeric vector, Citizenship status}
    \item{\code{DMDYRSUS}}{a numeric vector, Length of time in US}
    \item{\code{DMDEDUC3}}{a numeric vector, Education level - Children/Youth 6-19}
    \item{\code{DMDEDUC2}}{a numeric vector, Education level - Adults 20+}
    \item{\code{DMDMARTL}}{a numeric vector, Marital status}
    \item{\code{RIDEXPRG}}{a numeric vector, Pregnance=y status at exam}
    \item{\code{SIALANG}}{a numeric vector, Language of SP interview}
    \item{\code{SIAPROXY}}{a numeric vector, Proxy used in SP interview?}
    \item{\code{SIAINTRP}}{a numeric vector, Interpreter used in SP Interview?}
    \item{\code{FIALANG}}{a numeric vector, Language of family interview}
    \item{\code{FIAPROXY}}{a numeric vector, Proxy used in family interview?}
    \item{\code{FIAINTRP}}{a numeric vector, Interpreter used in Family Interview?}
    \item{\code{MIALANG}}{a numeric vector, Language of MEC Interview}
    \item{\code{MIAPROXY}}{a numeric vector, Proxy used in MEC Interview?}
    \item{\code{MIAINTRP}}{a numeric vector, Interpreter used in MEC Interview?}
    \item{\code{AIALANGA}}{a numeric vector, Language of ACASI Interview}
    \item{\code{DMDHHSIZ}}{a numeric vector, Total number of people in the Household}
    \item{\code{DMDFMSIZ}}{a numeric vector, Total number of people in the Family}
    \item{\code{DMDHHSZA}}{a numeric vector, # of children 5 years or younger in HH}
    \item{\code{DMDHHSZB}}{a numeric vector, # of children 6-17 years old in HH}
    \item{\code{DMDHHSZE}}{a numeric vector, # of adults 60 years or older in HH}
    \item{\code{DMDHRGND}}{a numeric vector, HH ref person's gender}
    \item{\code{DMDHRAGE}}{a numeric vector, HH ref person's age in years}
    \item{\code{DMDHRBR4}}{a numeric vector, HH ref person's country of birth}
    \item{\code{DMDHREDU}}{a numeric vector, HH ref person's education level}
    \item{\code{DMDHRMAR}}{a numeric vector, HH ref person's marital status}
    \item{\code{DMDHSEDU}}{a numeric vector, HH ref person's spouse's education level}
    \item{\code{WTINT2YR}}{a numeric vector, Full sample 2 year interview weight}
    \item{\code{WTMEC2YR}}{a numeric vector, Full sample 2 year MEC exam weight}
    \item{\code{SDMVPSU}}{a numeric vector, Masked variance pseudo-PSU}
    \item{\code{SDMVSTRA}}{a numeric vector, Masked variance pseudo-stratum}
    \item{\code{INDHHIN2}}{a numeric vector, Annual household income}
    \item{\code{INDFMIN2}}{a numeric vector, Annual family income}
    \item{\code{INDFMPIR}}{a numeric vector, Ratio of family income to poverty}
  }
}
\details{
The demographics file provides individual, family, and household-level information
on the following topics:
  \itemize{
    \item Survey participant’s household interview and examination status;
    \item Interview and examination sample weights;
    \item Masked variance units;
    \item Language of questionnaires used for the interviews conducted in the household and
    in the mobile examination center;
    \item Use of proxy or interpreter during the interviews;
    \item The six-month time period when the examination was performed;
    \item Pregnancy status;
    \item Household and family income;
    \item Household and family sizes;
    \item Household composition: the number of children (aged 5 years or younger and 6-17 years,
    and adults aged 60 years or older, in the household;
    \item Demographic information about the household reference person; and
    \item Other selected demographic information, such as gender, age, race/Hispanic origin,
education, marital status, military service status, country of birth, citizenship, and
years of U.S. residence.
  }

The format and coding for all the variables included in the 2015-2016 NHANES demographics
file are identical to those released for the 2013-2014 survey cycle.

Similar to the 2011-2014 cycle, the sample design for NHANES 2015-2016 also
includes an oversample of Asian Americans (Table 1).
The variable RIDRETH3 is included to describe the participant’s race and Hispanic origin.
}
\source{
\href{https://wwwn.cdc.gov/nchs/nhanes/search/datapage.aspx?Component=Demographics}{NHANES Demographics Component}
}
\references{
The NHANES 2015-2016 demographics questionnaires are available on the NHANES website
at: \href{https://wwwn.cdc.gov/nchs/nhanes/continuousnhanes/questionnaires.aspx?BeginYear=2015}{NHANES Questionnaires 2015}
}
\examples{
data(demo_i)
str(demo_i)
}
\keyword{datasets}
