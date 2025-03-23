# Reading csv files

df4 <- read.table("C:/Users/HP/Documents/R programming/proteinconc (for R).csv",header=TRUE,sep=",")
class(df4)
print(df4)
str(df4)

# Rownames basically makes primary keys, (cannot have duplicate values in the rows).
df5 <- read.table("C:/Users/HP/Documents/R programming/proteinconc (for R).csv",header=TRUE,row.names=1,sep=",")
class(df5)
print(df5)
str(df5)

# nrows will show the amount of rows mentioned from the table
df6 <- read.table("C:/Users/HP/Documents/R programming/proteinconc (for R).csv",header=TRUE,row.names=1,nrows=5,sep=",")
df6

# skip will skip the amount of rows mentioned from the starting.
df7 <- read.table("C:/Users/HP/Documents/R programming/proteinconc (for R).csv",header=TRUE,row.names=1,skip=10,sep=",")
df7

# read.delim will also work exactly like read.table (you can try the tables from last class)



# Reading Excel files
setwd("C:/Users/HP/Documents/R programming")
install.packages("readxl")
library("readxl")

df10 <- read_excel("imdb (for R).xlsx")
df10
df11<- read_xlsx("imdb (for R).xlsx")
df11
df12 <- read_xlsx("imdb (for R).xlsx",sheet=2)
df12

# install.packages("xlsx"), can use this library as well.

# Using save to save files in format of RData and load to use it again later.

save("df12",file="df12.RData")
load("df12.RData")
df12
str(df12)

