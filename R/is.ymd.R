#'Checks if an object can be coerced into a lubridate date, e.g. for user-inputted dates
#'@param x an object to check
#'@export

is.ymd = function(x){!is.na(lubridate::ymd(x, quiet = TRUE))}