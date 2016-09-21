#####################################################################

#R Script Template, a base script to begin any R project

#Chris

#This porject is:

######################################################################

#Set working directory
setwd("C:\\Users\\*******\\*******\\R Files")

#Load the packages and libraries
library(dplyr)
library(magrittr)
library(tidyr)
library(readr)
library(stringr)

#Read the exact file or select the file that you are going to use
data1 <- read_csv("xxxxxxx.csv")
#data1 <- file.choose()
#data1 <-read_csv(data1)

#Open the data view
View(data1)

#Basic summary functions to understand the data
names(data1)
str(data1)
sumamry(data1)
