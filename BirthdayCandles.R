x<-0
results<-c(1:10000)
repeat{
  candles<-30
  numBlows<-0
  
  while(candles>0){
    candles<-candles- sample(1:candles,1,T)
    numBlows<-numBlows+1
  }
  results[x+1]<-numBlows
  x<-x+1
  if(x==10000){
    break
  }
}
print(results)
print(mean(results))


