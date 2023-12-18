#'@title Spend Analyses
#'@description This function filters through finance data to gather spending of different months at different stores
#'@param input financial data output from "Parse pdf download" function
#'example July_Amazon <- spend_analysis(demodata2,7,"Amazon")
#'@param month month to analyze entered in numeric without preceeding zeros
#'@param store store or description keyword entered in quotation marks
#'


Spend_analysis <- function(input, month, store){
  
  library(dplyr)
  
#month
month_spend <- filter(input, grepl(month,input$Date))

#store
spend <- filter(month_spend, grepl(store,month_spend$Description))
spend <- sum(spend$Amount)


return(spend)
}

