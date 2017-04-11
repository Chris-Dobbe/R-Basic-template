#####################################################################

#Title: R Script Template, a base script to begin any R project

#Author: Chris

#Project Name:

######################################################################

#Set working directory
setwd("C:/Users/*******/*******/R Files")

#Load the packages and libraries, or d/l any using install.packages("???")
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
