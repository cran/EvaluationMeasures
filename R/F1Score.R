#' @title EvaluationMeasures.F1Score
#' @description F1Score of prediction
#' @details F1Score is Harmonic mean of precision and recall.
#' @details By getting the predicted and real values or number of TP,TN,FP,FN return the F1Score or F1Measure of model
#' @author Babak Khorsand
#' @export EvaluationMeasures.F1Score
#' @param Real Real binary values of the class
#' @param Predicted Predicted binary values of the class
#' @param TP Number of True Positives. Number of 1 in real which is 1 in predicted.
#' @param TN Number of True Negatives. Number of 0 in real which is 0 in predicted.
#' @param FP Number of False Positives. Number of 0 in real which is 1 in predicted.
#' @param FN Number of False Negatives. Number of 1 in real which is 0 in predicted.
#' @param Positive Consider 1 label as Positive Class unless changing this parameter to 0
#' @return F1Score
#' @examples
#' EvaluationMeasures.F1Score(c(1,0,1,0,1,0,1,0),c(1,1,1,1,1,1,0,0))
EvaluationMeasures.F1Score = function(Real=NULL,Predicted=NULL,Positive=1,TP=NULL,TN=NULL,FP=NULL,FN=NULL)
{
  recall=EvaluationMeasures.Recall(Real=Real,Predicted=Predicted,Positive=Positive,TP=TP,TN=TN,FP=FP,FN=FN)
  precision=EvaluationMeasures.Precision(Real=Real,Predicted=Predicted,Positive=Positive,TP=TP,TN=TN,FP=FP,FN=FN)
  if (any(is.null(recall),is.null(precision)))
    stop("Null value has been sent to the function")
  return(round((2*recall*precision)/(recall+precision),4))
}
