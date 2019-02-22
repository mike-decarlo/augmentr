#' Multiple package installation (without loading)
#' The \code{install_packs} function takes a single command, a list of package
#'   names, and will install them, if not already installed.
#' @param ... one or more character strings of package names
#'   to be downloaded from the repositories
# @param update a boolean; if \code{TRUE} then any available updates for the
#   package will be installed, if \code{FALSE} then updates will not be
#   installed
#' @param dependencies a boolean; if \code{TRUE} dependency packages will also
#'   be installed, if \code{FALSE} dependency packages will not be installed
#' @param force logical indicating whether packages should be forced to be
#'   installed/updated
#' @keywords pack install package
#' @importFrom utils install.packages installed.packages new.packages
#' @export
install_packs <- function(..., dependencies = TRUE, force = FALSE) {
  packages <- c(...)
  if (is.null(packages)) {
    stop(
      "\nMust include at least one package to install.\n"
    )
  } else {
    for (i in seq_along(packages)) {
      if (force == TRUE) {
        message(paste0("\nInstalling ", packages[i], " specified packages.\n"))
        install.packages(
          packages[i]
          , dependencies = dependencies
          , repos = "http://cran.us.r-project.org"
        )
      } else if (!is.element(packages[i], installed.packages()[, 1])) {
        message(paste("Package", packages[i], "not found, installing..."))
        install.packages(
          packages[i]
          , dependencies = dependencies
          , verbose = TRUE
          , repos = "http://cran.us.r-project.org"
        )
      } else {
        message(paste("Package", packages[i], "already installed."))
      }
    }
  }
}
