
####################################################
## Load the necessary libraries for this study ####
library(magrittr)
library(data.table)
library(DT)
library(shiny)

####################################################
## Read data ####

Table <- data.table(Store = c('ES0263', 'ES0418', 'ES0428', 'ES4503', 'ES4504', 'ES4505'),
                    'Worst scenario' = c(25,14,27,29,34,14),
                    'Estimated uplift' = c(30,21,37,38,42,19),
                    'Best scenario' = c(39,25,47,52,58,22))



