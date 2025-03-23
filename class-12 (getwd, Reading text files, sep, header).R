getwd()
# you can set directory using ---> setwd("C:/Users") too

df <- read.table("C:/Users/HP/Documents/R programming/file to import in R.txt", header=TRUE, sep=",")
class(df)
print(df)

d <- read.table("C:/Users/HP/Documents/R programming/file-2 to import in R.txt", sep="|")
class(d)
print(d)
# Weird warning message in both above (reading files)

setwd("C:/Users/HP/Documents/R programming") #You can just write the file name to access it now.
getwd()

z <- read.table("file-2 to import in R.txt", sep="|")
print(z)

# Excel files can be displayed using df10 <- read.table("clipboard", sep="\t", header=TRUE)