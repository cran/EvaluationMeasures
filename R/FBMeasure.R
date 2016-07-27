#' @title EvaluationMeasures.FBMeasure
#' @description FBMeasure of prediction
#' @details FBMeasure is weighted FMeasure.
#' @details By getting the predicted and real values or number of TP,TN,FP,FN return the FBMeasure of model
#' @author Babak Khorsand
#' @export EvaluationMeasures.FBMeasure
#' @param Real Real binary values of the class
#' @param Predicted Predicted binary values of the class
#' @param TP Number of True Positives. Number of 1 in real which is 1 in predicted.
#' @param TN Number of True Negatives. Number of 0 in real which is 0 in predicted.
#' @param FP Number of False Positives. Number of 0 in real which is 1 in predicted.
#' @param FN Number of False Negatives. Number of 1 in real which is 0 in predicted.
#' @param Positive Consider 1 label as Positive Class unless changing this parameter to 0
#' @param B Weight of FMeasure
#' @return FBMeasure
#' @examples
#' EvaluationMeasures.FBMeasure(c(1,0,1,0,1,0,1,0),c(1,1,1,1,1,1,0,0),B=3)
EvaluationMeasures.FBMeasure = function(Real=NULL,Predicted=NULL,Positive=1,TP=NULL,TN=NULL,FP=NULL,FN=NULL,B=1)
{
  recall=EvaluationMeasures.Recall(Real=Real,Predicted=Predicted,Positive=Positive,TP=TP,TN=TN,FP=FP,FN=FN)
  precision=EvaluationMeasures.Precision(Real=Real,Predicted=Predicted,Positive=Positive,TP=TP,TN=TN,FP=FP,FN=FN)
  if (any(is.null(recall),is.null(precision)))
    stop("Null value has been sent to the function")
  return(round(((1+B^2)*recall*precision)/(B^2*(recall+precision)),4))
}
