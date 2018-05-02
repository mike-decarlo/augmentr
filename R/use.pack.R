#' Package installing and loading function
#' 
#' The use.pack function takes a single command, the name of a package, and will install it, if not already installed, and then load it.
#' @param package A package name as a quoted string.
#' 
#' @keywords use pack install package
#' @export
#' 
#' @examples 
#' use.pack("ggplot2")

use.pack <- function(package) {
  
  if (!is.element(package, installed.packages()[, 1])) {
    
    message(paste("Package", package, "not found, installing..."))
    install.packages(package, dep = TRUE)
    
  }
  
  message(paste0("Loading package ", package, "..."))
  library(package, character.only = TRUE)
  
}