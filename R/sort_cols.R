#' Dataframe Column Sorting Function
#' \code{sort_cols} takes two arguments, the name of a dataframe and the order
#'   (ascending or descending), and will then provide the dataframe in the
#'   column sorting as specified.
#' @param df a dataframe object.
#' @param order asc or desc for ascending or descending ordering respectively.
#' @keywords sort columns dataframe
#' @export
sort_cols <- function(df = NULL, order = "asc") {
  if (is.null(df)) {
    stop(
      "The 'df' argument must be a non-null, dataframe object.\n"
    )
  }
  if (class(df) != "data.frame") {
    warning(
      paste0(
        "\nObject 'df' is not of class 'data.frame'.\n"
        , "nConverting to 'data.frame'.\n"
      )
    )
    df <- as.data.frame(df)
  }
  if (class(order) != "character") {
    stop(
      "\nThe 'order' argument requires a character input of 'asc' or 'desc'.\n"
    )
  }
  if (!(order %in% c("asc", "desc"))) {
    stop(
      paste0(
        "\nThe 'order' argument should have a value of 'asc' for ascending or "
        , "'desc' for descending ordering of the dataframe columns.\n"
      )
    )
  }
  message(
    paste0(
      "\nObject 'df' columns being sorted in "
      , ifelse(order == "asc", "ascending", "descending")
      , ", alphabetical order.\n"
    )
  )
  if (order == "asc") {
    df <- df[, order(colnames(df), decreasing = F)]
  } else if (order == "desc") {
    df <- df[, order(colnames(df), decreasing = )]
  }
  return(df)
}
