corr <- function(directory, threshold = 0){
  completeTotal <- complete(directory);
  completeTotal <- subset(completeTotal, completeTotal$nobs > threshold);
  vCorr <- c();
  vID <- completeTotal$id;
  if(length(vID) > 0){
   for(i in 1:length(vID)){
     filePath <- sprintf("%s\\%03d.csv",directory, vID[i]);
      specdata <- read.csv(filePath);
     vCorr <- append(vCorr, cor(specdata$sulfate, specdata$nitrate, use = "complete.obs"));
   }
  vCorr;
  }
}