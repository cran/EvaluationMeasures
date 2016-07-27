#' @title EvaluationMeasures.NLR
#' @description NLR of prediction
#' @details Negative Likelihood Ratio is (1-Sensitivity) / Specificity = PR(T-|D+)/PR(T-|D-)
#' @details By getting the predicted and real values or number of TP,TN,FP,FN return the Negative Likelihood Ratio of model
#' @author Babak Khorsand
#' @export EvaluationMeasures.NLR
#' @param Real Real binary values of the class
#' @param Predicted Predicted binary values of the class
#' @param TP Number of True Positives. Number of 1 in real which is 1 in predicted.
#' @param TN Number of True Negatives. Number of 0 in real which is 0 in predicted.
#' @param FP Number of False Positives. Number of 0 in real which is 1 in predicted.
#' @param FN Number of False Negatives. Number of 1 in real which is 0 in predicted.
#' @param Positive Consider 1 label as Positive Class unless changing this parameter to 0
#' @return NLR
#' @examples
#' EvaluationMeasures.NLR(c(1,0,1,0,1,0,1,0),c(1,1,1,1,1,1,0,0))
EvaluationMeasures.NLR = function(Real=NULL,Predicted=NULL,Positive=1,TP=NULL,TN=NULL,FP=NULL,FN=NULL)
{
  TNR=EvaluationMeasures.TNR(Real=Real,Predicted=Predicted,Positive=Positive,TP=TP,TN=TN,FP=FP,FN=FN)
  FNR=EvaluationMeasures.FNR(Real=Real,Predicted=Predicted,Positive=Positive,TP=TP,TN=TN,FP=FP,FN=FN)
  if (any(is.null(TNR),is.null(FNR)))
    stop("Null value has been sent to the function")
  return(round(TNR/FNR,4))
}
