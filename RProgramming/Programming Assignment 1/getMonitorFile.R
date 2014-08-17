getMonitorFile <- function(directory, monitor) {
  
  # Add all the leading zeros
  monitorFileName <- formatC(monitor, width=3, flag='0')
  
  read.csv(paste(directory,"/",monitorFileName,".csv", sep = ""))
}