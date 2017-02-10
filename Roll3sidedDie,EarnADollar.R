x<-0
GameResults<-c(1:10000)
repeat {
  Dollars<-0
  LastRoll<-0
  CurrentRoll<-sample(1:3,1,TRUE)
  #cat("CurrentRoll: ", CurrentRoll,"\n")
  #cat("LastRoll: ", LastRoll,"\n")
  
  while(CurrentRoll>=LastRoll){
    Dollars<-Dollars+1
    LastRoll<-CurrentRoll
    CurrentRoll<-sample(1:3,1,TRUE)
    #cat("CurentRoll: ", CurrentRoll,"\n")
    #cat("LastRoll: ", LastRoll,"\n")
    #cat("Dollars: ", Dollars,"\n")
  }
  GameResults[x+1]<-Dollars
  #print("---------------")
  #cat("FinalRoll: ", CurrentRoll,"\n")
  #cat("FinalLastRoll: ", LastRoll,"\n")
  #cat("TotalDollars: ", Dollars,"\n")
  x = x+1
  if(x==10000){
    break
  }
}
print(GameResults)
print(mean(GameResults))

