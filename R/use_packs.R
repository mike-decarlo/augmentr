#' Package (multiple) installing and loading function
#' \code{use_packs} takes a single command, a list of package names, and will
#'   install them, if not already installed, and then load them.
#' @param packlist character vector of the names of packages whose current
#'   versions should be downloaded from the repositories.
#' @param dependencies logical indicating whether to also install uninstalled
#'   packages which these packages depend on/link to/import/suggest.
#' @keywords use pack install package
#' @export
#' @importFrom utils install.packages installed.packages
#' @examples 
#' use_packs(c("dplyr", "stringr"))
use_packs <- function(packlist = c(), dependencies = TRUE) {
  packages <- c(packlist)
  for (i in 1:length(packages)) {
    if (!is.element(packages[i], installed.packages()[, 1])) {
      message(paste("Package", packages[i], "not found, installing..."))
      install.packages(packages[i], dependencies = dependencies, repos = "http://cran.us.r-project.org")
    }
    message(paste0("Loading Package ", packages[i], "..."))
    library(packages[i], character.only = TRUE)
  }
}