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
library(gridExtra)
library(DescTools)
library(RDCOMClient)  ## for importing specific cells from an Excel file
library(gdata)  ##for importing entire xls files

#Read the exact CSV file OR select the file that you are going to use
data1 <- read.csv('xxxxxxx.csv')
#data1 <- read.xls("xxxx.xlsx")
#data1 <- read.csv('xxxxx.tsv', sep = "\t", header = TRUE) #for any TSV files
#data1 <- file.choose() #can be used if your file is not in the working director established earlier
#data1 <- XLGetRange(file = "C:/Users/***********/Excel file.xlsx", sheet = "sheet1", range = "A1:B21", header = TRUE) #imports specific range of cells from an Excel file



#Open the data view
View(data1)

#Basic summary functions to understand the data
names(data1)
head(data1)
str(data1)
sumamry(data1)
