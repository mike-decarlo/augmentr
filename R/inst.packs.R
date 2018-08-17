#' Multiple package installation (without loading)
#' 
#' The \code{inst.packs} function takes a single command, a list of package names, and will install them, if not already installed.
#' @param packlist character vector of the names of packages whose current versions should be downloaded from the repositories.
#' @param dependencies logical indicating whether to also install uninstalled packages which these packages depend on/link to/import/suggest.
#' 
#' @keywords pack install package
#' @export
#' @importFrom utils install.packages installed.packages
#' 
#' @examples 
#' inst.packs(c("ggplot2", "dplyr"))

inst.packs <- function(packlist = c(), dependencies = TRUE) 
{
  packages <- c(packlist)
  for (i in 1:length(packages)) {
    if (!is.element(packages[i], installed.packages()[, 1])) {
      message(paste("Package", packages[i], "not found, installing..."))
      install.packages(packages[i], dependencies = dependencies, verbose = TRUE, repos = "http://cran.us.r-project.org")
    }
  }
}
