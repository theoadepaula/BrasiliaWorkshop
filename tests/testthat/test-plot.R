test_that("plot function works", {
  
  model <- lm(mpg ~ wt, data = mtcars)
  plot <- plot_residuals(model)
  expect_true("ggplot" %in% class(plot))
  
})
