complete <- function(directory = getwd(), id = 1:332) {
  nobs = vector()
  for (i in id) {
    data <- formatC(i, flag = "0", width = 3)
    path <- paste(directory, "/", data, ".csv", sep="")
    data_path <- read.csv(path)
    c <- data_path[complete.cases(data_path) == TRUE,]
    nobs <- append(nobs, nrow(c))
  }
  data.frame(id, nobs)
}