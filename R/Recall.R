#' @title EvaluationMeasures.Recall
#' @details Recall is Proportional of positives that are correctly identified
#' @description Recall of prediction
#' @details By getting the predicted and real values or number of TP,TN,FP,FN return the True Positive Rate or Sensitivity or Recall of model
#' @author Babak Khorsand
#' @export EvaluationMeasures.Recall
#' @param Real Real binary values of the class
#' @param Predicted Predicted binary values of the class
#' @param TP Number of True Positives. Number of 1 in real which is 1 in predicted.
#' @param TN Number of True Negatives. Number of 0 in real which is 0 in predicted.
#' @param FP Number of False Positives. Number of 0 in real which is 1 in predicted.
#' @param FN Number of False Negatives. Number of 1 in real which is 0 in predicted.
#' @param Positive Consider 1 label as Positive Class unless changing this parameter to 0
#' @return Recall
#' @examples
#' EvaluationMeasures.Recall(c(1,0,1,0,1,0,1,0),c(1,1,1,1,1,1,0,0))
EvaluationMeasures.Recall = function(Real=NULL,Predicted=NULL,Positive=1,TP=NULL,TN=NULL,FP=NULL,FN=NULL)
{
  return(EvaluationMeasures.TPR(Real=Real,Predicted=Predicted,Positive=Positive,TP=TP,TN=TN,FP=FP,FN=FN))
}
