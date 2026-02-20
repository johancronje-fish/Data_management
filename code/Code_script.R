## just the commented code script that is used in the Rmarkdown script

#Loading usefull packages
library(tidyverse)
library(ggplot2)
library(readxl)
library(janitor)


#Importing the needed data into R
Bean_germination <- Bean_germination <- read_excel("Data/Bean germination.xls")%>%
  clean_names()





