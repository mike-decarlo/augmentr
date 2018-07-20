#' @title Value un-Matching
#' 
#' @description The \code{\%out\%} function works as the inverse of \code{\%in\%}, looking for the absence of value or values of the \code{lhs} from the \code{rhs}.
#' 
#' @param lhs A value or vector to be un-matched from.
#' @param rhs A value or vector to be un-matched to.
#' @keywords out notin nin
#' @examples
#' v <- c("a","b","c")
#' u <- c("a","b","d")
#' v %out% u
#' @rdname out
#' @export
`%out%` <- function(lhs, rhs)
{
  match(lhs, rhs, nomatch = 0) == 0
}