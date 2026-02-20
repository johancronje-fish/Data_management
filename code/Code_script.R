## just the commented code script that is used in the Rmarkdown script

#Loading usefull packages
library(tidyverse)
library(ggplot2)
library(readxl)
library(janitor)



#Importing the needed data into R
Bean_germination <- Bean_germination <- read_excel("Data/Bean germination.xls")%>%
  clean_names()


##creating  a table explaining the different treatments

#checking if treatment levels are saved as factors
summary(Bean_germination)

#converting the appropriate columns from characters to factors
Bean_germination$treat<-as.factor(Bean_germination$treat)

#Bean_germination$salt<-as.factor(Bean_germination$salt)
#Bean_germination$size<-as.factor(Bean_germination$size)


##viewing the usefull columns for my boxplots
Bean_germination%>%
  select(treat,mean_germination_time)

##creating my boxplots
ggplot(Bean_germination, aes(x=treat,y=mean_germination_time))+
  geom_boxplot()+
  labs(x = "treatment",y= "Mean germination time (Days)")+
  theme_minimal()+ 
  scale_fill_discrete()



  
  
  
  

