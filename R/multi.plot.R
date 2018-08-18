#' Plotting of multiple objects in a single window
#' 
#' The \code{multi.plot} function is meant to make plotting of multiple plot objects easier and more straightforward. Adapted from Winston Chang's "Cookbook for R".
#' @param plotlist A vector list of plot objects, e.g. c(plot1, plot2, ..., plot_n).
#' @param cols Number of columns in layout.
#' @param layout A matrix specifying the layout. If present, 'cols' is ignored.
#' @param ... further arguments (plot names) passed to or from other methods.
#' 
#' @keywords plot multi
#' @export
#' @importFrom grid grid.newpage grid.layout viewport pushViewport
#' 
#' @examples 
#' install.packages("ggplot2")
#' library(ggplot2)
#' 
#' # This example uses the ChickWeight dataset, which comes with ggplot2
#' # First plot
#' p1 <- ggplot(ChickWeight, aes(x=Time, y=weight, colour=Diet, group=Chick)) +
#'   geom_line() +
#'   ggtitle("Growth curve for individual chicks")
#' 
#' # Second plot
#' p2 <- ggplot(ChickWeight, aes(x=Time, y=weight, colour=Diet)) +
#'   geom_point(alpha=.3) +
#'   geom_smooth(alpha=.2, size=1) +
#'   ggtitle("Fitted growth curve per diet")
#' 
#' # Third plot
#' p3 <- ggplot(subset(ChickWeight, Time==21), aes(x=weight, colour=Diet)) +
#'   geom_density() +
#'   ggtitle("Final weight, by diet")
#' 
#' # Fourth plot
#' p4 <- ggplot(subset(ChickWeight, Time==21), aes(x=weight, fill=Diet)) +
#'   geom_histogram(colour="black", binwidth=50) +
#'   facet_grid(Diet ~ .) +
#'   ggtitle("Final weight, by diet") +
#'   theme(legend.position="none")        # No legend (redundant in this graph)  
#'   
#' multi.plot(p1, p2, p3, p4, cols = 2)

multi.plot <- function(..., plotlist = NULL, cols = 1, layout = NULL) {

  # Make a list from the ... arguments and plotlist
  plots <- c(list(...), plotlist)

  num_plots = length(plots)

  # If layout is NULL, then use 'cols' to determine layout
  if (is.null(layout)) {
    # Make the panel
    # ncol: Number of columns of plots
    # nrow: Number of rows needed, calculated from # of cols
    layout <- matrix(seq(1, cols * ceiling(num_plots/cols)),
                     ncol = cols, nrow = ceiling(num_plots/cols))

  }

  if (num_plots==1) {
    print(plots[[1]])

  } else {
    # Set up the page
    grid::grid.newpage()
    grid::pushViewport(grid::viewport(layout = grid::grid.layout(nrow(layout)
      , ncol(layout))))
      
    # Make each plot, in the correct location
    for (i in 1:num_plots) {
      # Get the i,j matrix positions of the regions that contain this subplot
      matchidx <- as.data.frame(which(layout == i, arr.ind = TRUE))

      print(plots[[i]], vp = grid::viewport(layout.pos.row = matchidx$row
        , layout.pos.col = matchidx$col))

    }

  }

}
