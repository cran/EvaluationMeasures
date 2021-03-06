% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Sensitivity.R
\name{EvaluationMeasures.Sensitivity}
\alias{EvaluationMeasures.Sensitivity}
\title{EvaluationMeasures.Sensitivity}
\usage{
EvaluationMeasures.Sensitivity(Real = NULL, Predicted = NULL,
  Positive = 1, TP = NULL, TN = NULL, FP = NULL, FN = NULL)
}
\arguments{
\item{Real}{Real binary values of the class}

\item{Predicted}{Predicted binary values of the class}

\item{Positive}{Consider 1 label as Positive Class unless changing this parameter to 0}

\item{TP}{Number of True Positives. Number of 1 in real which is 1 in predicted.}

\item{TN}{Number of True Negatives. Number of 0 in real which is 0 in predicted.}

\item{FP}{Number of False Positives. Number of 0 in real which is 1 in predicted.}

\item{FN}{Number of False Negatives. Number of 1 in real which is 0 in predicted.}
}
\value{
Sensitivity
}
\description{
Sensitivity of prediction
}
\details{
Sensitivity is Proportional of positives that are correctly identified

By getting the predicted and real values or number of TP,TN,FP,FN return the Sensitivity or Recall or True Positive Rate of model
}
\examples{
EvaluationMeasures.Sensitivity(c(1,0,1,0,1,0,1,0),c(1,1,1,1,1,1,0,0))
}
\author{
Babak Khorsand
}

