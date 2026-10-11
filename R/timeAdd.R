#' Nicely adds HMS time together, automatically converting minutes to hours
#' E.g. 45m and 55m return 1h40 and not 100m
#' @param x a Lubridate datetime object
#' @param y a second Lubridate datetime object to add to the first
#' @export


timeAdd = function(x, y){
  x = x+y
  if(minute(x)>=60){
    excess = minute(x)%%60 # modulo operation to get excess minutes
    hourComp = (minute(x)-excess)/60
    minute(x) = excess
    hour(x) = hour(x) + hourComp
  }
  return(x)
}