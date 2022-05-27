pmean = function(directory, pollutant, id = 1:332) 
{
  file.names <- dir(path = directory, pattern = ".csv", full.names=TRUE)
  a <- numeric(0)
  for (i in id){
    data <- read.csv(file.names[i])
    a <- c(a, data[[pollutant]])
  }
  mean(a, na.rm = TRUE)
}
