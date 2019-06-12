#=====================================================================#
# This is code to create: 02-wrangle.R 
# Authored by and feedback to: @mjfrigaard
# MIT License
# Version: 1.0
# repo: https://github.com/mjfrigaard/syw-example
#=====================================================================#



# install packages -----------------------------------------------------------
library(readxl)
library(tidyverse)
library(janitor)


# remove age variables ----------------------------------------------------

IcanBP <- IcanBP %>% 
    dplyr::select(dplyr::everything(),
                  age = `age_yrs...6`,
                  # remove other age variable
                  -c(age_yrs...7), 
                  -c(age_yrs...40))

# IcanBP %>% glimpse(78)


# create categorical bmi --------------------------------------------------
# check the numbers and categories
IcanBP %>% 
    dplyr::group_by(bmicat) %>% 
    dplyr::summarize(
        min_bmi = min(bmiperc, na.rm = TRUE),
        max_bmi = max(bmiperc, na.rm = TRUE))

# assign
IcanBP <- IcanBP %>% 
    dplyr::mutate(
        bmi_cat_lbl = case_when(
            bmicat == 1 ~ "underweight",
            bmicat == 2 ~ "normal or healthy weight",
            bmicat == 3 ~ "overweight",
            bmicat == 4 ~ "obese"))
# verify
IcanBP %>% 
    count(bmicat, bmi_cat_lbl) %>% 
    tidyr::spread(bmi_cat_lbl, n)




