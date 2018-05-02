#' Multiple package installation (without loading)
#' 
#' The \code{inst.packs} function takes a single command, a list of package names, and will install them, if not already installed.
#' @param packlist A list of package names as a vector of quoted strings.
#' 
#' @keywords pack install package
#' @export
#' 
#' @examples 
#' inst.packs(c("ggplot2", "dplyr"))

inst.packs <- function(packlist = c()) 
{
  packages <- c(packlist)
  for (i in 1:length(packages)) {
    if (!is.element(packages[i], installed.packages()[, 1])) {
      message(paste("Package", packages[i], "not found, installing..."))
      install.packages(packages[i], dep = TRUE, verbose = TRUE)
    }
  }
}
