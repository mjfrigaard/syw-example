#=====================================================================#
# This is code to create: 01-import.R 
# Authored by and feedback to: @mjfrigaard
# MIT License
# Version: 1.0
# repo:
#=====================================================================#




# packages ----------------------------------------------------------------

library(readxl)
library(tidyverse)
library(janitor)

# locat data file ---------------------------------------------------------
# fs::dir_tree("data")
IcanBP <- readxl::read_excel("data/ican_total.xlsx")
IcanBP %>% dplyr::glimpse(78)


