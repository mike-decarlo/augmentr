#' Extract the \code{n} characters from the right of a string
#' 
#' \code{right} uses a specific case of the \code{substr} function to take only
#'   the right most \code{n} characters from the input string.
#'   
#' @param x a string
#' @param n the number of characters from the right of the string to extract
#' 
#' @examples 
#' foo <- "foo"
#' right(foo, 2)
#' 
#' @export
right <- function(x, n) {
  substr(x, nchar(x) - n + 1, nchar(x))
}