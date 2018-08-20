#' Insert \%out\%.
#'
#' Call this function as an addin to insert \code{ \%out\% } at the cursor
#'   position.
#'
#' @export
insert_out_addin <- function() {
  rstudioapi::insertText(" %out% ")
}