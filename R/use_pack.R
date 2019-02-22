#' Package installing and loading function
#' \code{use_pack} takes a single command, the name of a package, and will
#'   install it, if not already installed, and then load it.
#' @param package a string; the name of a package to be installed
#' @param dependencies a boolean; if \code{TRUE} dependency packages will also
#'   be installed, if \code{FALSE} dependency packages will not be installed
#' @param force logical indicating whether packages should be forced to be
#'   installed/updated
#' @keywords use pack install package
#' @importFrom utils install.packages installed.packages new.packages
#' @export
use_pack <- function(package = NULL, dependencies = TRUE, force = FALSE) {
  package <- c(package)
  if (is.null(package)) {
    stop(
      "\nMust include a package to install.\n"
    )
  } else if (force == TRUE) {
    message(paste0("\nInstalling ", package, " specified package.\n"))
    install.packages(
      package
      , dependencies = dependencies
      , repos = "http://cran.us.r-project.org"
    )
  } else if (!is.element(package, installed.packages()[, 1])) {
    message(paste("Package", package, "not found, installing..."))
    install.packages(
      package
      , dependencies = dependencies
      , repos = "http://cran.us.r-project.org"
      )
  }
  message(paste0("Loading package ", package, "..."))
  library(package, character.only = TRUE)
}
