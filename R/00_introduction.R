#' ## Introduction to R and the RStudio environment
#' 
#' RStudio is an Integrated Development Environment (IDE) for R. This is an
#' example of an R Script. An R Script is a list of R commands that are run
#' sequentially. 
#' 
#' ### Code editing pane
#' If you are viewing this file in RStudio, this is the code editing pane. This
#' is where you'll edit R Scripts and other files.
#' 
#' ### Environment/History Pane
#' By default, the Environment/History pane is to the right. It shows objects that 
#' are present in your working environment. We will create some objects below. The
#' history tab shows the history of R commands you've run. Later, we'll talk about
#' other tabs in this pane.
#' 
#' ### Console
#' Below is the R Console. This is where R commands are run and results are printed.
#' You can type single lines of code and run them by pressing enter. 
#' 
#' ###Help/Plots/Files
#' The pane to the lower right is where help information and plots are displayed.
#' There is also a basic file browser
#' 
#' ## Basic scripting
#' 
#' Anything that follows a '#' is a comment, and won't be run. It's a way to provide
#' plain language information to users to supplement code.  
#'
#' Below, we'll start actually running some R code.  
#' 
#' To run a single line of code, plase your cursor in the line and press Ctrl + Enter. 
#' Or click the "Run" button in the upper right corner. Pressing "Source" runs the 
#' entire script.

#' Basic arithmetic

1 + 1

#' Create & use variables

x <- 2 
x = 2
x * 2

#' ## What are functions?
#' 
#' Functions are pre-programmed sets of routines that typically take arguments and 
#' return some output based on those arguments. Function arguments are specified 
#' within paranthases

#' Using a function
abs(-1) 
abs(x = -1) # Defining argument name for function
# abs(y = x) # Throws error - incorrect variable name
abs(x = x) # Something in our environment called `x`

#' Look up help for functions you know by name with `?`
?sqrt
?abs
?max

1:3
max(1:3)
max(1:3, na.rm = TRUE)
max(na.rm = TRUE, 1:3)

#' ## What are packages?
#' 
#' An R package is a set of related functions bundled with documentation on how
#' to use the functions (like the help pages we were just looking at)
#'
#' ### Installing and loading packages
#' 
#' Packages are installed using the install.packages() function

# CRAN = world R package repository
# GRAN = USGS packages

# Blender analogy: 
#     Buy a blender once (install.packages)
#     Plug it in every time to use it (library)
#     Occasionally need to purchase a newer model (install.packages, update button)

# install "once" (or update)
#install.packages('maps')

# it's installed, but I can't find help for the function
?map

# You need to load it every time you open an new R session
# Put all library load calls at the top of your scripts
# alternatively, you can use :: after the package name (see below)
library(maps)
require(maps) # same idea, but doesn't fail if the package doesn't exist
##### Example code exploration #####

# Try doing ?map and play around with adding/subtracting/changing 
#   function inputs and re-running the code.

maps::map(database = 'world', 
          regions = c('brazil', 'argentina', 
                      'peru', 'bolivia', 'paraguay'), 
          fill = TRUE,
          mar = c(0, 0, 0, 3),
          col = 'cornflowerblue')

# What are some things you notice with the code?
#   Syntax, indentation, spacing, commas, parantheses, colors, etc?


##### Viewing the R Markdown report, "data_workflow.Rmd" #####

# First, scroll through and look for `library()` calls & install 
#   packages you might need using `install.packages()`.
#   You should see `dataRetrieval`, `ggplot2`, `dplyr`
# Second, make sure you have the package "rmarkdown" installed.
# Third, open the file and click the "knit" button.

#install.packages("dataRetrieval")
#install.packages("dplyr")