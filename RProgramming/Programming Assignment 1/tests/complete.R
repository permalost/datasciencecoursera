test.complete.examples <- function()
{
  checkEqualsNumeric(c(1,117), complete("specdata", 1))
  checkEqualsNumeric(matrix(c(2,4,8,10,12,1041,474,192,148,96),ncol=2,nrow=5), complete("specdata", c(2, 4, 8, 10, 12)))
  checkEqualsNumeric(matrix(c(30:25,932,711,475,338,586,463),ncol=2,nrow=6), complete("specdata", 30:25))
  checkEqualsNumeric(c(3,243), complete("specdata", 3))
}