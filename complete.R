complete <- function(directory, id = 1:332){
   nobs <- c();
   for (n in id) {
    filePath <- sprintf("%s\\%03d.csv", directory, n);
    specdata <- read.csv(filePath);
    specdata <- specdata[complete.cases(specdata),];
    nRow <- nrow(specdata);
    nobs <- append(nobs, nRow);
   }
   completeTotal <- data.frame(id, nobs); 
   completeTotal;
}