#' @title EvaluationMeasures.Accuracy
#' @description Accuracy of prediction
#' @details Accuracy is What fraction of our prediction is true.
#' @details By getting the predicted and real values or number of TP,TN,FP,FN return the accuaracy of model
#' @author Babak Khorsand
#' @export EvaluationMeasures.Accuracy
#' @param Real Real binary values of the class
#' @param Predicted Predicted binary values of the class
#' @param TP Number of True Positives. Number of 1 in real which is 1 in predicted.
#' @param TN Number of True Negatives. Number of 0 in real which is 0 in predicted.
#' @param FP Number of False Positives. Number of 0 in real which is 1 in predicted.
#' @param FN Number of False Negatives. Number of 1 in real which is 0 in predicted.
#' @param Positive Consider 1 label as Positive Class unless changing this parameter to 0
#' @return Accuracy
#' @examples
#' EvaluationMeasures.Accuracy(c(1,0,1,0,1,0,1,0),c(1,1,1,1,1,1,0,0))
EvaluationMeasures.Accuracy = function(Real=NULL,Predicted=NULL,Positive=1,TP=NULL,TN=NULL,FP=NULL,FN=NULL)
{
  if (!is.null(Real))
  {
    TPFN=EvaluationMeasures.table(Real,Predicted)
    TP=TPFN[1,1]
    TN=TPFN[1,2]
    FP=TPFN[1,3]
    FN=TPFN[1,4]
  }
  if (any(is.null(TP),is.null(FP),is.null(TN),is.null(FN)))
    stop("Null value has been sent to the function")
  return(round((TP+TN)/(TP+TN+FP+FN),4))
}
