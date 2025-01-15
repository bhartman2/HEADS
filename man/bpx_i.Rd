\name{bpx_i}
\alias{bpx_i}
\docType{data}
\title{
Blood Pressure
}
\description{
BP is measured on participants 8 years and older;
radial (or brachial, if necessary) pulse is measured on participants 5 years and older;
and heart rate is measured on children 0-4 years of age.
}
\usage{data("bpx_i")}
\format{
  A data frame with 9544 observations on the following 21 variables.
  \describe{
    \item{\code{SEQN}}{a numeric vector, Respondent sequence number}
    \item{\code{PEASCCT1}}{a numeric vector, Blood Pressure Comment; 1:Safety exclusion, 2:SP refusal, 3:Time constraints, 4:Other}
    \item{\code{BPXCHR}}{a numeric vector, 60 sec HR (30 sec HR * 2)}
    \item{\code{BPAARM}}{a numeric vector, Arm selected; 1:right, 2:left, 8:could not obtain}
    \item{\code{BPACSZ}}{a numeric vector, Coded cuff size; 1: Infant, 3:Adult, 4:Large, 5:Thigh}
    \item{\code{BPXPLS}}{a numeric vector, 60 sec. pulse (30 sec. pulse * 2)}
    \item{\code{BPXPULS}}{a numeric vector, Pulse regular or irregular? 1:Regular, 2:Irregular}
    \item{\code{BPXPTY}}{a numeric vector, Pulse type; 1:Radial, 2:Brachial, 8:could not obtain}
    \item{\code{BPXML1}}{a numeric vector, MIL: maximum inflation levels (mm Hg)}
    \item{\code{BPXSY1}}{a numeric vector, Systolic: Blood pres (1st rdg) mm Hg}
    \item{\code{BPXDI1}}{a numeric vector, Diastolic: Blood pres (1st rdg) mm Hg}
    \item{\code{BPAEN1}}{a numeric vector, Enhancement used first reading; 1:Yes, 2:No, 8:Could not obtain}
    \item{\code{BPXSY2}}{a numeric vector, Systolic: Blood pres (2nd rdg) mm Hg}
    \item{\code{BPXDI2}}{a numeric vector, Diastolic: Blood pres (2nd rdg) mm Hg}
    \item{\code{BPAEN2}}{a numeric vector, Enhancement used second reading; 1:Yes, 2:No, 8:Could not obtain}
    \item{\code{BPXSY3}}{a numeric vector, Systolic: Blood pres (3rd rdg) mm Hg}
    \item{\code{BPXDI3}}{a numeric vector, Diastolic: Blood pres (3rd rdg) mm Hg}
    \item{\code{BPAEN3}}{a numeric vector, Enhancement used third reading; 1:Yes, 2:No, 8:Could not obtain}
    \item{\code{BPXSY4}}{a numeric vector, Systolic: Blood pres (4th rdg) mm Hg}
    \item{\code{BPXDI4}}{a numeric vector, Diastolic: Blood pres (4th rdg) mm Hg}
    \item{\code{BPAEN4}}{a numeric vector, Enhancement used fourth reading; 1:Yes, 2:No, 8:Could not obtain}
  }
}
\details{
After resting quietly in a seated position for 5 minutes and after the participant’s
maximum inflation level (MIL) has been determined, three consecutive BP readings are obtained.
asurement is interrupted or incomplete, a fourth attempt may be made.
All BP determinations (systolic and diastolic) are taken
in the mobile examination center (MEC). Participants with any of the following on both arms were excluded from the exam: rashes, gauze dressings, casts, edema, paralysis, tubes, open sores or wounds, withered arms, a-v shunts, radical mastectomy. Participants were also excluded if the BP cuff does not fit on the arm. BP measurements are taken in the right arm unless specific conditions prohibit the use of the right arm, or, if participants report any reason that the BP measurements should not be taken in the right arm.

Prior to BP measurements, upper arm circumference is measured,
which is done to guide selection of cuff size. Details on the protocol
for obtaining upper arm circumference is described in the
Physician Examination Procedures Manual.
}
\source{
\href{https://wwwn.cdc.gov/nchs/nhanes/search/datapage.aspx?Component=Examination&CycleBeginYear=2015#:~:text=BPX_I}{BPX_I Data}
}
\references{
\href{https://wwwn.cdc.gov/Nchs/Data/Nhanes/Public/2015/DataFiles/BPX_I.htm}{BPX_I Datafile}
}
\examples{
  \dontrun{
  data(bpx_i)
  }
}
\keyword{datasets}
