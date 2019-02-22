#' Package (multiple) installing and loading function
#' \code{use_packs} takes a single command, a list of package names, and will
#'   install them, if not already installed, and then load them.
#' @param ... one or more character strings of package names
#'   to be downloaded from the repositories
#' @param dependencies a boolean; if \code{TRUE} dependency packages will also
#'   be installed, if \code{FALSE} dependency packages will not be installed
#' @param force logical indicating whether packages should be forced to be
#'   installed/updated
#' @keywords use pack install package
#' @importFrom utils install.packages installed.packages new.packages
#' @export
# @param update a boolean; if \code{TRUE} then any available updates for the
#   package will be installed, if \code{FALSE} then updates will not be
#   installed
use_packs <- function(..., dependencies = TRUE, force = FALSE) {
  packages <- c(...)
  if (is.null(packages)) {
    stop("\nMust include at least one package to install.\n")
  } else {
    for (i in seq_along(packages)) {
      if (force  == TRUE) {
        message(paste0("\nInstalling ", packages[i], " specified packages.\n"))
        install.packages(
          packages[i]
          , dependencies = dependencies
          , repos = "http://cran.us.r-project.org"
        )
      }
      else if (!is.element(packages[i], installed.packages()[, 1])) {
        message(paste("Package", packages[i], "not found, installing..."))
        install.packages(
          packages[i]
          , dependencies = dependencies
          , repos = "http://cran.us.r-project.org"
          )
      }
      message(paste0("Loading Package ", packages[i], "..."))
      library(packages[i], character.only = TRUE)
    }
  }
}
