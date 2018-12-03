#' Multiple package installation (without loading)
#' The \code{inst_packs} function takes a single command, a list of package
#'   names, and will install them, if not already installed.
#' @param ... one or more character strings of package names
#'   to be downloaded from the repositories.
#' @param dependencies logical indicating whether to also install uninstalled
#'   packages which these packages depend on/link to/import/suggest.
#' @keywords pack install package
#' @importFrom utils install.packages installed.packages
#' @export
inst_packs <- function(..., dependencies = TRUE) {
  packages <- c(...)
  if (is.null(packages)) {
    stop(
      "\nMust include at least one package to install.\n"
    )
  }
  for (i in 1:length(packages)) {
    if (!is.element(packages[i], installed.packages()[, 1])) {
      message(paste("Package", packages[i], "not found, installing..."))
      install.packages(
        packages[i]
        , dependencies = dependencies
        , verbose = TRUE
        , repos = "http://cran.us.r-project.org"
        )
    } else {
      message(paste("Package", packages[i], "found and will not be installed."))
    }
  }
}
