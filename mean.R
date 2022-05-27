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

complete = function(directory, id=1:length(file_list))  
{
  file_list = list.files(directory)
  lst = file_list[match(id, as.numeric(sub(".csv","",file_list)))]
  pth = file.path(directory, lst)
  obs = function(pth) sum(complete.cases(read.csv(pth)))
  data.frame(id = id, completed_obs = unlist(lapply(pth,obs)))
}

corr <- function(directory, threshold = 0) 
{
  file.names <- dir(path=directory, pattern =".csv", full.names=TRUE)
  corr_vect <- numeric()
  for (i in 1:332) {
    dat <- read.csv(file.names[i])
    data <- dat[complete.cases(dat),]
    if (nrow(data) > threshold) {
      corr_vect <- c(corr_vect, cor(data[,"sulfate"], data[, "nitrate"]))
    }
  }
  return(corr_vect)
}
