library(testthat)
library(lyesRFuncs)

if (Sys.getenv("NOT_CRAN") == "true") {
  test_check("lyesRFuncs")
}