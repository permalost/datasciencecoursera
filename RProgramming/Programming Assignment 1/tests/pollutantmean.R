test.pollutantmean.examples <- function()
{
  checkEqualsNumeric(4.064, pollutantmean("specdata", "sulfate", 1:10))
  checkEqualsNumeric(1.706, pollutantmean("specdata", "nitrate", 70:72))
  checkEqualsNumeric(1.281, pollutantmean("specdata", "nitrate", 23))
}
