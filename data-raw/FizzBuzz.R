library(tidyverse)

FizzBuzz <- function(n){
  res <- as.character(n)
  for (i in 1:n) {
    if (i %% 3 == 0 & i %% 5 == 0) {
      res[i] <- "FizzBuzz"
    } else if (i %% 3 == 0) {
      res[i] <- "Fizz"
    } else if (i %% 5 == 0) {
      res[i] <- "Buzz"
    }else {
      res[i] <- i
    }
  }
  return(res)
}
