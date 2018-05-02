#' Package installing and loading function
#' 
#' The use.pack function takes a single command, the name of a package, and will install it, if not already installed, and then load it.
#' @param pack A package name as a quoted string.
#' 
#' @keywords use pack install package
#' @export
#' @importFrom utils install.packages installed.packages
#' 
#' @examples 
#' use.pack("ggplot2")

use.pack <- function(pack) {
  
  if (!is.element(pack, installed.packages()[, 1])) {
    
    message(paste("Package", pack, "not found, installing..."))
    install.packages(pack, dep = TRUE)
    
  }
  
  message(paste0("Loading package ", pack, "..."))
  library(pack, character.only = TRUE)
  
}