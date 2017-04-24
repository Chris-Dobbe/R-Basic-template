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
#library(gridExtra)
#library(DescTools)
#library(RDCOMClient)  ## for importing specific cells from an Excel file
#library(gdata)  ##for importing entire xls files
#library(fBasics)

# Begin by loading in the dataset using the appropriate method

data1 <- file.choose() # Allows for manual selection from folder location, paired with below
  data <- read_csv(data1)  
#data1 <- read_csv("file_name.csv") #loads in the CSV to a tibble, easier to work with
#data1 <- read.csv("file_name.tsv", sep = "\t", header = TRUE)
#data1 <- read.xls("file_name.xlsx")
#data1 <- XLGetRange(sheet = "sheet1", range = "A1:B21", header = TRUE) #only used when Excel workbook is open


#Open the data view
View(data1)

### Basic summary functions to understand the data
names(data1)
head(data1)
str(data1)
summary(data1)

### Convert any columns to a factor, or other data types, if needed
data1[,"column.namel"] <- lapply(data1[,"column.name"],as.factor)  #converts specified column to factor
str(data1)  #double check data types to ensure change happened

### Create new variables with filtered or subsets of the original dataset
newdata1 <- data1 %>% filter(column.name == "variable_1", column.name == "variable_2")  # filter data by rows, returning only rows with a certain variable
newdata2 <- data1 %>% arrange(column.name, column.name)  # arrange data by rows, returning only rows that match that variable
newdata3 <- data1 %>% select(column.name, column.name)  # select specific columns, return only specific columns with that variable

### Group and Summarise Data, similar to a pivot table
newdata4 <- data1 %>% group_by(column.name)  # groups data by a column variables
newdata5 <- data1 %>% summarise(number = n())  # summarise data by a number of occurences
newdata6 <_ data1 %>% summarise_each(funs(sum), solumn.name, column.name, column.name)  #summarise each column by total of column
newdata7 <- mutate(data1, new.variable = var_1 + var_2)  # creates new column based on combination of existing columns

### Combine and Compare data sets (like a lookup table)
newdata8 <- data1 %>% semi_join(data1, lookup_table1, by="column.name")  # shows rows of data that DO match the other lookup table
newdata8 <- anti_join(data1, lookup_table1, by="column.name")  # shows rows of data that DO NOT match the other table


### Once completing your code, export a CSV to a specified location
write.csv(data1, "/Users/**computerUserName**/Desktop/dataName.csv")
