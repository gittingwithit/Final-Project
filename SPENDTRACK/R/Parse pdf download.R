#' @title Parse PDF
#' @description
#' This function parses data copied from PDF downloads of PNC Bank Statements
#' @param input csv file of copied PDF data


parse_pdf <- function(input){
  numbers <- strsplit(input,"(?= [[:alpha:]])",perl = TRUE)
  df_numbers <- do.call("rbind", numbers)
  list_numbers <- df_numbers[,1]
  
  split_numbers <- strsplit(list_numbers," ")
  df_numbers <- do.call("rbind", split_numbers)
  colnames(df_numbers) <- c("Date","Amount")
  
  list_description <- strsplit(input,"[0-9./]+")
  df_description <- do.call("rbind", list_description)
  Description <- df_description[,3]
  
  df_out <- data.frame(df_numbers, Description)
  
  return(df_out)
}
  

