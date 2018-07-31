#' Extract the \code{n} characters from the left of a string
#' 
#' \code{left} uses a specific case of the \code{substr} function to take only
#'   the left most \code{n} characters from the input string.
#'   
#' @param x a string
#' @param n the number of characters from the left of the string to extract
#' 
#' @examples 
#' foo <- "foo"
#' left(foo, 2)
#' 
#' @export
left <- function(x, n) {
  substr(x, 1, n)
}