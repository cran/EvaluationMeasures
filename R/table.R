#' @title EvaluationMeasures.table
#' @description Specify the number of TP,TN,FP,FN
#' @details By getting the predicted values and real values calulate the number of True positive samples, False Negative, False Positive and True Negative
#' @author Babak Khorsand
#' @export EvaluationMeasures.table
#' @param Real Real binary values of the class
#' @param Predicted Predicted binary values of the class
#' @param Positive Consider 1 label as Positive Class unless changing this parameter to 0
#' @return TP,TN,FP,FN
#' @examples
#' EvaluationMeasures.table(c(1,0,1,0,1,0,1,0),c(1,1,1,1,1,0,0,0))
EvaluationMeasures.table = function(Real,Predicted,Positive=1)
{
  TP=0
  TN=0
  FP=0
  FN=0
  len=length(Real)
  if (len!=length(Predicted) | !all(Real==1 | Real ==0) | !all(Predicted==1 | Predicted==0))
  {
    stop("Real And Predicted values must be the same size and all members must be 0 or 1")
  }else
  {
    for (i in 1:len)
    {
      if (Real[i]==Predicted[i])
      {
        TP=TP+Real[i]
        TN=TN+1-Real[i]
      }else
      {
        FN=FN+Real[i]
        FP=FP+1-Real[i]
      }
    }
    if (Positive==0)
    {
      temp=TP
      TP=TN
      TN=temp
      temp=FP
      FP=FN
      FN=temp
    }
    return(data.frame(TP=TP,TN=TN,FP=FP,FN=FN))
  }
}
