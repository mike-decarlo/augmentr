#' Package installing and loading function
#' \code{use_pack} takes a single command, the name of a package, and will
#'   install it, if not already installed, and then load it.
#' @param pack a string; the name of a package to be installed
# @param update a boolean; if \code{TRUE} then any available updates for the
#   package will be installed, if \code{FALSE} then updates will not be
#   installed
#' @param dependencies a boolean; if \code{TRUE} dependency packages will also
#'   be installed, if \code{FALSE} dependency packages will not be installed
#' @keywords use pack install package
#' @importFrom utils install.packages installed.packages new.packages
#' @export
use_pack <- function(pack, dependencies = TRUE) {
  pack <- c(pack)
  if (is.null(pack)) {
    stop("Error: 'packlist' must be length = 1.\n")
  } else {
      if (!is.element(pack, installed.packages()[, 1])) {
      message(paste("Package", pack, "not found, installing..."))
      install.packages(
        pack
        , dependencies = dependencies
        , repos = "http://cran.us.r-project.org"
        )
      }
    message(paste0("Loading package ", pack, "..."))
    library(pack, character.only = TRUE)
  }
}
