#' @title EvaluationMeasures.PLR
#' @description PLR of prediction
#' @details Positive Likelihood Ratio is Sensitivity / (1-Specificity) = PR(T+|D+)/PR(T+|D-)
#' @details By getting the predicted and real values or number of TP,TN,FP,FN return the Positive Likelihood Ratio of model
#' @author Babak Khorsand
#' @export EvaluationMeasures.PLR
#' @param Real Real binary values of the class
#' @param Predicted Predicted binary values of the class
#' @param TP Number of True Positives. Number of 1 in real which is 1 in predicted.
#' @param TN Number of True Negatives. Number of 0 in real which is 0 in predicted.
#' @param FP Number of False Positives. Number of 0 in real which is 1 in predicted.
#' @param FN Number of False Negatives. Number of 1 in real which is 0 in predicted.
#' @param Positive Consider 1 label as Positive Class unless changing this parameter to 0
#' @return PLR
#' @examples
#' EvaluationMeasures.PLR(c(1,0,1,0,1,0,1,0),c(1,1,1,1,1,1,0,0))
EvaluationMeasures.PLR = function(Real=NULL,Predicted=NULL,Positive=1,TP=NULL,TN=NULL,FP=NULL,FN=NULL)
{
  TPR=EvaluationMeasures.TPR(Real=Real,Predicted=Predicted,Positive=Positive,TP=TP,TN=TN,FP=FP,FN=FN)
  FPR=EvaluationMeasures.FPR(Real=Real,Predicted=Predicted,Positive=Positive,TP=TP,TN=TN,FP=FP,FN=FN)
  if (any(is.null(TPR),is.null(FPR)))
    stop("Null value has been sent to the function")
  return(round(TPR/FPR,4))
}
