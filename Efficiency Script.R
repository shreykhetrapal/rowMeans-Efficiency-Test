# Script to check the efficiency of calculating means using apply() vs rowMeans

timecalculate <- function(n){
  x <- matrix(rep(100),n,n)
  t1 <- Sys.time()
  apply(x,1,mean)
  t2 <- Sys.time()
  firstTime <- t2-t1
  
  t3 <- Sys.time()
  rowMeans(x)
  t4 <- Sys.time()
  secondTime <- t4-t3
  
  totaltimedifference<-  secondTime - firstTime
  
  print(firstTime)
  print(secondTime)
  print(totaltimedifference)
}



