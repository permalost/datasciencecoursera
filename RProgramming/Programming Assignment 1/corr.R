corr <- function(directory, threshold = 0) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'threshold' is a numeric vector of length 1 indicating the
  ## number of completely observed observations (on all
  ## variables) required to compute the correlation between
  ## nitrate and sulfate; the default is 0
  
  ## Return a numeric vector of correlations
  results <- numeric()
  for (file in list.files(directory)) {
    
    tmp <- na.omit(read.csv(paste(directory,file, sep = "/")))
    if(nrow(tmp) > threshold) {
      result <- cor(tmp[["sulfate"]],tmp[["nitrate"]])
      results <- c(results, result)
    }
  }
  
  results
}