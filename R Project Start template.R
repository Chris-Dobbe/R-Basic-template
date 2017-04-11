#####################################################################

#Title: R Script Template, a base script to begin any R project

#Author: Chris

#Project Name:

######################################################################

#Set working directory
setwd("C:/Users/*******/*******/R Files")

#Load the packages and libraries, or d/l any using install.packages("package.name")
library(dplyr)
library(magrittr)
library(tidyr)
library(readr)
library(stringr)
library(ggplot2)

#Read the exact file OR select the file that you are going to use
data1 <- read_csv("xxxxxxx.csv")
#data1 <- file.choose()
#data1 <-read_csv(data1)

#Open the data view
View(data1)

#Basic summary functions to understand the data
names(data1)
head(data1)
str(data1)
sumamry(data1)

#Create a single variable histogram to look at the spread of any one variable in your dataset
qplot(x = variable_1, data = data.frame_name, binwidth = x,            #note that binwidth is not required, leave out for first plot
      xlab = 'x axis title'
      ylab = 'y axis title'
      color = I('black')) + # this will create a black outline for each bar, makes viewing histogram easier
  scale_x_continuous(limits = c(0, x), breaks = seq(lower limit, upper limit, axis_interval_value)) + # used to reformat the x-axis
  scale_y_continuous(limits = c(0, x), breaks = seq(lower limit, upper limit, axis_internval_value)) + # used to reformat the y-axis
  facet_wrap(~variable_2, ncol = x) +   #ability to breakdown variable_1 by variable_2
  facet_grid(vertical_variable_2 ~ horizontal_variable_3)  #ability to breakdown variable_1 by 2 additional variables in a x/y axis grid
