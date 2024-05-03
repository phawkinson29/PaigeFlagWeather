#'FizzBuzz
#'
#' For any number evenly divisible by 3, there will be "Fizz" instead of a number.
#' The same will be done for any number evenly divisible by 5 except "Buzz" will replace the number.
#' If the integer is divisible by 3 and 5, the number will be replaced with "FizzBuzz".
#'
#' @param n A positive integer
#'
#' @return A vector of numbers will be printed. In the vector, if the number is divisible by 3 "Fizz" will appear,
#' if the number is divisible by 5 "Buzz" will appear,
#' and if the number is divisible by both 3 and 5 "FizzBuzz" will appear.
#'
#' @examples
#' FizzBuzz(10)
#' FizzBuzz(30)
#'
#' @export

FizzBuzz <- function(n) {
  res <- as.integer(n)
  if (is.na (res)) {
    stop("Not a number")
    }
  else if ( res == 0) {
    stop("Input is zero")
  } else if (res < 0) {
    stop("Input is negative")
  } else if (res == Inf | res == -Inf) {
    stop("Input is infinite")
  } else {
    if (res %% 3 == 0 & res %% 5 == 0) {
      return("FizzBuzz")
    } else if (res %% 3 == 0) {
      return("Fizz")
    } else if (res %% 5 == 0) {
      return("Buzz")
    } else {
      return(res)
    }
  }
}
