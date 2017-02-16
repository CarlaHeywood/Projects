x<-0
results<-c(1:1000)
repeat{
  flips<-0
  position<-0
  while(position!=-32 && position!=63){
    coinFlip<-sample(1:2,1,T)
    flips<-flips+1
    #1=heads 2=tails
    if(coinFlip==1){
      position<-position+1
    }
    else{
      position<-position-1
    }
  }
  results[x+1]<-flips
  x<-x+1
  if(x==1000){
    break
  }
}
print(mean(results))


