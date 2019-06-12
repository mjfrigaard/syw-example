#=====================================================================#
# This is code to create: 01-import.R 
# Authored by and feedback to: @mjfrigaard
# MIT License
# Version: 1.0
# repo: https://github.com/mjfrigaard/syw-example
#=====================================================================#



# install packages -----------------------------------------------------------

library(readxl)
library(tidyverse)
library(janitor)

# locate/import data file -----------------------------------------------------

IcanBP <- readr::read_csv("data/IcanBP.csv")
IcanBP %>% dplyr::glimpse(78)




