library('RUnit')

source('pollutantmean.R')

pollutant.test.suite <- defineTestSuite("pollutant.example",
                              dirs = file.path("tests"),
                              testFileRegexp = '^pollutantmean\\.R')

complete.test.suite <- defineTestSuite("complete.example",
                              dirs = file.path("tests"),
                              testFileRegexp = '^complete\\.R')

test.result <- runTestSuite(c(pollutant.test.suite,complete.test.suite))

printTextProtocol(test.result)