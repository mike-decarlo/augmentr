#' Calculate the standard error
#' The \code{st_err} function calculates the standard error of a variable,
#' taking into account \code{NA} values, either to keep or remove them
#' depending on the user input to the \code{na_rm} argument.
#' @param x A numeric vector for which the standard error will be calculated
#'   from.
#' @param na_rm If NA values are not an issue, then FALSE,
#'   otherwise, TRUE.
#' @keywords se standard error
#' @importFrom stats sd
#' @examples
#' x <- rbinom(n = 100, size = 20, prob = 0.6)
#' mode(x)
#' @export
mode <- function(x) {
  u <- unique(x)
  u[which.max(tabulate(match(x, u)))]
}
