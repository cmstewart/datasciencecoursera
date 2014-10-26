corr <- function(directory, threshold = 0) {
  source("getfiles.R")
  source("complete.R")
  
  dir = complete(directory)
  
  all <- dir[dir$nobs > threshold, ]
  vec <- numeric(0)
  
  for(id in all$id) {
    csv <- getfiles(directory, id)
    con <- !is.na(csv$sulfate) & !is.na(csv$nitrate)
    x <- csv[con, ]
    vec <- c(vec, cor(x$sulfate, x$nitrate))
  }
  vec
}
