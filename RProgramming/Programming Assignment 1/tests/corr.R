test.corr.examples <- function()
{
  cr <- corr("specdata", 150)
  checkEqualsNumeric(c(-0.01896, -0.14051, -0.04390, -0.06816, -0.12351, -0.07589), head(cr))
  checkEqualsNumeric(c(-0.2110, -0.0500,  0.0946,  0.1250,  0.2680,  0.7630), summary(cr))
  
  cr <- corr("specdata", 400)
  checkEqualsNumeric(c(-0.01896, -0.04390, -0.06816, -0.07589,  0.76313, -0.15783), head(cr))
  checkEqualsNumeric(c(-0.1760, -0.0311,  0.1000,  0.1400,  0.2680,  0.7630), summary(cr))
  
  cr <- corr("specdata", 5000)
  checkEqualsNumeric(c(), summary(cr))
  checkEqualsNumeric(0, length(cr))
  
  cr <- corr("specdata")
  checkEqualsNumeric(c(-1.0000, -0.0528,  0.1070,  0.1370,  0.2780,  1.0000), summary(cr))
  checkEqualsNumeric(323, length(cr))
}