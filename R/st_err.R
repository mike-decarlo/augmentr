#' Calculate the standard error
#' The \code{st_err} function calculates the standard error of a variable,
#' taking into account \code{NA} values, either to keep or remove them
#' depending on the user input to the \code{na_rm} argument.
#' @param x A numeric vector for which the standard error will be calculated
#'   from.
#' @param na_rm If NA values are not an issue, then FALSE,
#'   otherwise, TRUE.
#' @keywords se standard error
#' @export
#' @importFrom stats sd
#' @examples
#' x <- rnorm(10, 5, 0.25)
#' st_err(x)
st_err <- function(x, na_rm = FALSE) {
  if (is.numeric(x) == FALSE) {
    stop("The variable 'x' must be numeric.\n")
  }
  if (na_rm == FALSE) {
    se <-  (sd(x, na.rm = na_rm) / ((length(x)) ^ 0.5))
  } else if (na.rm == TRUE) {
    se <- (sd(x, na.rm = na_rm) / ((length(x) - sum(is.na(x))) ^ 0.5))
  } else {
    stop("The variable 'na.rm' must be set to either 'TRUE' or 'FALSE'.\n")
  }
  return(se)
}
