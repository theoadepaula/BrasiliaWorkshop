
#' Make a plot of residuals vs fitted values
#' 
#' @param model an lm object.
#' 
#' @return a ggplot object
#' 
#' @import ggplot2
#' 
#' @export
#' 
#' @examples 
#' 
#' model <- lm(mpg ~ wt, data = mtcars)
#' plot <- plot_residuals(model)

plot_residuals <- function(model) {
  
  # We want to use ggplot2 to make a plot of model residual on the y-axis, 
  # and fitted values on the x-axis.
  
  # The first step will be to extract the fitted values and residuals from
  # the model. We can use the `fitted.values()` function and the `residuals()` 
  # function
  
  # ?fitted.values
  # ?residuals
  
  # Make a data frame with these two vectors using data.frame()
  
  residual_df <- data.frame()
  
  # Now use the data frame with ggplot2
  
  plot <- ggplot() + # Fill in the 'data' argument in this function
    geom_point() + # Fill in the 'mapping' argument in this function
    geom_hline(yintercept = 0) +
    theme_bw()
  
  # We need to return our plot
  return(0)
  
}