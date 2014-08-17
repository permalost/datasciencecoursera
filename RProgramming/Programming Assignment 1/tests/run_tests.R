library('RUnit')

source('pollutantmean.R')

pollutant.test.suite <- defineTestSuite("pollutant.example",
                              dirs = file.path("tests"),
                              testFileRegexp = '^pollutantmean\\.R')


source('complete.R')

complete.test.suite <- defineTestSuite("complete.example",
                             dirs = file.path("tests"),
                             testFileRegexp = '^complete\\.R')

source('corr.R')

corr.test.suite <- defineTestSuite("corr.example",
                                       dirs = file.path("tests"),
                                       testFileRegexp = '^corr\\.R')

test.result <- c(runTestSuite(pollutant.test.suite),runTestSuite(complete.test.suite),runTestSuite(corr.test.suite))

printTextProtocol(test.result)