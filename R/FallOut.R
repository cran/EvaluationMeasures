#' @title EvaluationMeasures.FallOut
#' @description FallOut of prediction
#' @details Fall out is Poportional of negatives that predict as positive.
#' @details By getting the predicted and real values or number of TP,TN,FP,FN return the Fall out or False Positive Rate of model
#' @author Babak Khorsand
#' @export EvaluationMeasures.FallOut
#' @param Real Real binary values of the class
#' @param Predicted Predicted binary values of the class
#' @param TP Number of True Positives. Number of 1 in real which is 1 in predicted.
#' @param TN Number of True Negatives. Number of 0 in real which is 0 in predicted.
#' @param FP Number of False Positives. Number of 0 in real which is 1 in predicted.
#' @param FN Number of False Negatives. Number of 1 in real which is 0 in predicted.
#' @param Positive Consider 1 label as Positive Class unless changing this parameter to 0
#' @return FallOut
#' @examples
#' EvaluationMeasures.FallOut(c(1,0,1,0,1,0,1,0),c(1,1,1,1,1,1,0,0))
EvaluationMeasures.FallOut = function(Real=NULL,Predicted=NULL,Positive=1,TP=NULL,TN=NULL,FP=NULL,FN=NULL)
{
  return(EvaluationMeasures.FPR(Real=Real,Predicted=Predicted,Positive=Positive,TP=TP,TN=TN,FP=FP,FN=FN))}
