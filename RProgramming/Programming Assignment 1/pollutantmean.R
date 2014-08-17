pollutantmean <- function(directory, pollutant, id = 1:332) {
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'pollutant' is a character vector of length 1 indicating
  ## the name of the pollutant for which we will calculate the
  ## mean; either "sulfate" or "nitrate".
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  
  data <- numeric()
  
  for (monitor in id) {
    monitorFileName <- formatC(monitor, width=3, flag='0')
    
    file <- read.csv(paste(directory,"/",monitorFileName,".csv", sep = ""))
    
    data <- c(data, file[[pollutant]])    
  }
  
  ## Return the mean of the pollutant across all monitors list
  ## in the 'id' vector (ignoring NA values)
  mean(data, na.rm=TRUE)
}