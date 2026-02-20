## just the commented code script that is used in the Rmarkdown script

#Loading usefull packages
library(tidyverse)
library(ggplot2)
library(readxl)


#Importing the needed data into R
Bean_germination <- read_excel("Bean germination.xls")


##Cleaning up the dataset

#creating new colnames because excel colnames don't always agree with R


