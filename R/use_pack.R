#' Package installing and loading function
#' \code{use.pack} takes a single command, the name of a package, and will
#'   install it, if not already installed, and then load it.
#' @param pack character value of the name of a package whose current versions
#'   should be downloaded from the repositories.
#' @param dependencies logical indicating whether to also install uninstalled
#'   packages which this packages depend on/link to/import/suggest.
#' @keywords use pack install package
#' @export
#' @importFrom utils install.packages installed.packages
#' @examples 
#' use.pack("dplyr")
use.pack <- function(pack, dependencies = TRUE) {
  if (!is.element(pack, installed.packages()[, 1])) {
    message(paste("Package", pack, "not found, installing..."))
    install.packages(pack, dependencies = dependencies, repos = "http://cran.us.r-project.org")
  }
  message(paste0("Loading package ", pack, "..."))
  library(pack, character.only = TRUE)
}