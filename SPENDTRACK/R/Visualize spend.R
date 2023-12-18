#' @title Visualize Spend
#' @description
#' This function produces a plot comparing spending of different stores 
#' @param input data frame with at least column X and column Y defined below
#' @param X names of categories analyzed
#' @param Y amounts spent



Visualize_spend <- function(input_df, X, Y){
   
   library(ggpattern)
   library(ggplot2)
   library(hrbrthemes)
   
   
   plot <- ggplot(input_df, aes(x=X, y=Y)) +
     geom_col_pattern(
       aes(pattern=X,
           pattern_angle=X,
           pattern_spacing=X
       ), 
       fill            = 'white',
       colour          = 'black', 
       pattern_density = 0.5, 
       pattern_fill    = 'black',
       pattern_colour  = 'darkgrey'
     ) +
     theme_bw()
   
   return(plot)
 }



