\name{trigly_i}
\alias{trigly_i}
\docType{data}
\title{
Cholesterol - Low - Density Lipoprotein (LDL) & Triglycerides (TRIGLY_I)
}
\description{
This method is based on the work by Wahlefeld (Roche, 2014) using a
lipoprotein lipase from microorganisms for the rapid and complete hydrolysis of triglycerides to glycerol
followed by oxidation to dihydroxyacetone phosphate and hydrogen peroxide.

Triglycerides are fatty acid esters of glycerol that have three hydroxyl groups.
Because they are insoluble in water, the triglycerides are transported with other more polar
lipids. Elevated triglyceride measurements are associated with diabetes mellitus,
pancreatitis, alcoholism, glycogen storage disease, hypothyroidism, nephrosis,
pregnancy, use of oral contraceptives and gout. Triglyceride levels are decreased
in hyperthyroidism, use of certain lipid-lowering drugs and malabsorption syndrome.
}
\usage{data("trigly_i")}
\format{
  A data frame with 0 observations on the following 2 variables.
  \describe{
    \item{\code{SEQN}}{a numeric vector, Respondent sequence number}
    \item{\code{WTSAF2YR}}{a numeric vector, Fasting Subsample 2 Year MEC Weight}
    \item{\code{LBXTR}}{a numeric vector, Triglyceride (mg/dL)}
    \item{\code{LBDTRSI}}{a numeric vector, Triglyceride (mmol/L).
     The triglycerides value in mg/dL (LBXTR) was converted
    to mmol/L (LBDTRSI) by multiplying by 0.01129.
    }
    \item{\code{LBDLDL}}{a numeric vector, LDL-cholesterol (mg/dL).
    [LDL-cholesterol] = [total cholesterol] – [HDL-cholesterol] – [triglycerides/5]
    where all values are expressed in mg/dL. The calculation is valid
    for triglycerides less than or equal to 400 mg/dL.
    }
    \item{\code{LBDLDLSI}}{a numeric vector, LDL-Cholesterol (mmol/L).
    The LDL-cholesterol in mg/dL (LBDLDL) was converted
    to mmol/L (LBDLDLSI) by multiplying by 0.02586.
    }
  }
}
\details{
Triglycerides are fatty acid esters of glycerol that have three hydroxyl
groups. Because they are insoluble in water, the triglycerides are transported
with other more polar lipids. Elevated triglyceride measurements are
associated with diabetes mellitus, pancreatitis, alcoholism,
glycogen storage disease, hypothyroidism, nephrosis, pregnancy,
use of oral contraceptives and gout.
Triglyceride levels are decreased in hyperthyroidism,
use of certain lipid-lowering drugs and malabsorption syndrome.

Refer to the
\href{https://wwwn.cdc.gov/nchs/data/nhanes/2015-2016/manuals/2016_MEC_Laboratory_Procedures_Manual.pdf}{Laboratory Procedures Manual}
for a detailed description of the laboratory methods used.
}
\source{
\href{https://wwwn.cdc.gov/Nchs/Data/Nhanes/Public/2015/DataFiles/TRIGLY_I.xpt)}{TRIGLY_I Data}
}
\references{
\href{https://wwwn.cdc.gov/Nchs/Data/Nhanes/Public/2015/DataFiles/TRIGLY_I.htm}{TRIGLY_I Data}
}
\examples{
  \dontrun{
  data(trigly_i, package="HEADS")
  trigly_i
  }
}
\keyword{datasets}
