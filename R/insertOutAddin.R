#' Insert \%out\%.
#'
#' Call this function as an addin to insert \code{ \%out\% } at the cursor position.
#'
#' @export
insertOutAddin <- function() {
  rstudioapi::insertText(" %out% ")
}