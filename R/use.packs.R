#' Package (multiple) installing and loading function
#' 
#' The use.packs function takes a single command, a list of package names, and will install them, if not already installed, and then load them.
#' @param packlist A list of package names as a vector of quoted strings.
#' 
#' @keywords use pack install package
#' @export
#' 
#' @examples 
#' use.packs(c("ggplot2", "dplyr"))

use.packs <- function(packlist = c()) {
  
  packages <- c(packlist)
  
  for (i in 1:length(packages)) {
    
    if (!is.element(packages[i], installed.packages()[, 1])) {
      
      message(paste("Package", packages[i], "not found, installing..."))
      install.packages(packages[i], dep = TRUE)
      
    }
    
    message(paste0("Loading Package ", packages[i], "..."))
    library(packages[i], character.only = TRUE)
    
  }
  
}