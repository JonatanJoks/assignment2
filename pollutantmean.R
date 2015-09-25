
pollutantmean <- function(directory,pollutant, id=1:332){
  z<-NA
  j<-0
   if(pollutant == "nitrate") {k<-3} else if(pollutant=="sulfate") {k<-2}  
 
  for (i in id){
    
    if(nchar(i)== 1){j<-paste(0,0,i,sep="")}   else if (nchar(i)==2){j<-paste(0,i,sep="")}   else if (nchar(i)== 3){j<-i}
    x<-read.table(paste(directory,"/",j,".csv", sep=""), sep=",", header=TRUE)
   z<- append(z,x[[k]],after=0)
    
  }
 
  mean(z, na.rm=TRUE)
}