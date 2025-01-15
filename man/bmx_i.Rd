\name{bmx_i}
\alias{bmx_i}
\docType{data}
\title{
NHANES Body Measures Data
}
\description{
NHANES body measures data for 2015.
}
\usage{data("bmx_i")}
\format{
  A data frame with 9544 observations on the following 26 variables.
  \describe{
    \item{\code{SEQN}}{a numeric vector, Respondent sequence number}
    \item{\code{BMDSTATS}}{a numeric vector, Body Measures Component Status Code}
    \item{\code{BMXWT}}{a numeric vector, Weight (kg)}
    \item{\code{BMIWT}}{a numeric vector, Weight Comment, with codes:
      \tabular{ll}{
      1 \tab Could not obtain	\cr
      3	\tab Clothing	\cr
      4	\tab Medical appliance \cr
      .	\tab Missing \cr
      }
    }
    \item{\code{BMXRECUM}}{a numeric vector, Recumbent Length (cm)}
    \item{\code{BMIRECUM}}{a numeric vector, Recumbent Length Comment, with codes
      \tabular{ll}{
      1	\tab Could not obtain \cr
      3	\tab Not straight \cr
      .	\tab Missing \cr
      }
    }
    \item{\code{BMXHEAD}}{a numeric vector, Head Circumference (cm)}
    \item{\code{BMIHEAD}}{a numeric vector, Head Circumference Comment, with codes
      \tabular{ll}{
        1 \tab Could not obtain \cr
        . \tab Missing \cr
      }
    }
    \item{\code{BMXHT}}{a numeric vector, Standing Height (cm)}
    \item{\code{BMIHT}}{a numeric vector, Standing Height Comment, with codes
      \tabular{ll}{
        1 \tab Could not obtain \cr
        3	\tab Not straight	\cr
        .	\tab Missing	\cr
      }
    }
    \item{\code{BMXBMI}}{a numeric vector, Body Mass Index (kg/m**2)}
    \item{\code{BMDBMIC}}{a numeric vector, BMI Category - Children/Youth
      \tabular{ll}{
        1	\tab Underweight\cr
        2	\tab Normal weight	\cr
        3	\tab Overweight		\cr
        4	\tab Obese	\cr
        .	\tab Missing \cr
      }
    }
    \item{\code{BMXLEG}}{a numeric vector, Upper Leg Length (cm)}
    \item{\code{BMILEG}}{a numeric vector, Upper Leg Length Comment, with code
      \tabular{ll}{
        1	\tab Could not obtain	\cr
        .	\tab Missing \cr
      }
    }
    \item{\code{BMXARML}}{a numeric vector, Upper Arm Length (cm)}
    \item{\code{BMIARML}}{a numeric vector, Upper Arm Length Comment, with codes
      \tabular{ll}{
        1	\tab Could not obtain \cr
        .	\tab Missing \cr
      }
    }
    \item{\code{BMXARMC}}{a numeric vector, Arm Circumference (cm)}
    \item{\code{BMIARMC}}{a numeric vector, Arm Circumference Comment, with codes
      \tabular{ll}{
        1	\tab Could not obtain	\cr
        .	\tab Missing	\cr
      }
    }
    \item{\code{BMXWAIST}}{a numeric vector, Waist Circumference (cm)}
    \item{\code{BMIWAIST}}{a numeric vector, Waist Circumference Comment, with codes
      \tabular{ll}{
        1	\tab Could not obtain	\cr
        .	\tab Missing \cr
      }
    }
    \item{\code{BMXSAD1}}{a numeric vector, Sagittal Abdominal Diameter 1st (cm)}
    \item{\code{BMXSAD2}}{a numeric vector, Sagittal Abdominal Diameter 2nd (cm)}
    \item{\code{BMXSAD3}}{a numeric vector, Sagittal Abdominal Diameter 3rd (cm)}
    \item{\code{BMXSAD4}}{a numeric vector, Sagittal Abdominal Diameter 4th (cm)}
    \item{\code{BMDAVSAD}}{a numeric vector, Average Sagittal Abdominal Diameter (cm)}
    \item{\code{BMDSADCM}}{a numeric vector, Sagittal Abdominal Diameter Comment, with codes
      \tabular{ll}{
        1	\tab Could not obtain	\cr
        2	\tab SP unable to comply with exam instruction	\cr
        3	\tab SP discomfort	\cr
        4	\tab Use of positioning cushion	\cr
        5	\tab Other	\cr
        .	\tab Missing \cr
    }
  }
}
}
\details{
NHANES body measures data are used to monitor trends in infant and child growth,
to estimate the prevalence of overweight and obesity in U.S. children, adolescents,
and adults, and to examine the associations between body weight and the health and
nutritional status of the U.S. population.

The new collected Sagittal Abdominal Diameter (SAD) data will be used to establish
population-based reference ranges, and to improve the health risk assessments associated
with body weight and obesity.

The measurements and target age groups for the NHANES 2015–2016 body measures
component are as follows:

  \itemize{
    \item Weight: All ages
    \item Head circumference: birth through 6 months of age
    \item Recumbent length: birth through 47 months of age
    \item Standing height: 2 years and older
    \item Upper leg length: 8 years and older
    \item Upper arm length: 2 months of age and older
    \item Mid-upper arm circumference: 2 months of age and older
    \item Waist circumference: 2 years of age and older
    \item Sagittal abdominal diameter: 8 years of age and older
  }
}
\source{
 \href{https://wwwn.cdc.gov/Nchs/Data/Nhanes/Public/2015/DataFiles/BMX_I.htm#BMDSTATS}{NHANES BMX_I File}
}

\references{
\href{https://wwwn.cdc.gov/nchs/nhanes/search/datapage.aspx?Component=Examination}{NHANES Examination Component}
}

\examples{
library(HEADS)
data(bmx_i)
str(bmx_i)
}

\keyword{datasets}

