#' Multiple package installation (without loading)
#' The \code{inst_packs} function takes a single command, a list of package
#'   names, and will install them, if not already installed.
#' @param ... one or more character strings of package names
#'   to be downloaded from the repositories
#' @param update a boolean; if \code{TRUE} then any available updates for the
#'   package will be installed, if \code{FALSE} then updates will not be
#'   installed
#' @param dependencies a boolean; if \code{TRUE} dependency packages will also
#'   be installed, if \code{FALSE} dependency packages will not be installed
#' @keywords pack install package
#' @importFrom utils install.packages installed.packages new.packages
#' @export
inst_packs <- function(..., update = TRUE, dependencies = TRUE) {
  packages <- c(...)
  if (is.null(packages)) {
    stop(
      "\nMust include at least one package to install.\n"
    )
  }
  for (i in seq_along(packages)) {
    if (!is.element(packages[i], installed.packages()[, 1])) {
      message(paste("Package", packages[i], "not found, installing..."))
      install.packages(
        packages[i]
        , dependencies = dependencies
        , verbose = TRUE
        , repos = "http://cran.us.r-project.org"
        )
    } else if (update == TRUE & is.element(packages[i], new.packages())) {
      message(paste0("Update found for ", packages[i], ", updating..."))
      install.packages(
        packages[i]
        , dependencies = dependencies
        , repos = "http://cran.us.r-project.org"
        )
    } else {
      message(paste(
        "No updates for"
        , packages[i]
        , "found and will not be installed."
        ))
    }
  }
}
