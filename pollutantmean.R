pollutantmean <- function(directory, pollutant, id = 1:332){
  vPollutantTotal <- c();
  for (n in id) {
    filePath <- sprintf("%s\\%03d.csv",directory,n);
    specdata <- read.csv(filePath);
    vPollutant <- specdata[[pollutant]];
    vPollutant <- subset(vPollutant, vPollutant >= 0);
    vPollutantTotal <- append(vPollutantTotal, vPollutant);
  }
  mean(vPollutantTotal);
}