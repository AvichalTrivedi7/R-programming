getwd()
setwd("C:/Users/HP/Documents/R programming")

library("readxl")
df20 <- read_xlsx("imdb (for R).xlsx", sheet=2)
df20

df21 <- read_xlsx("imdb (for R).xlsx", header=TRUE, sheet=2, range = "R1C1:R3C2")
df21

df22 <- read_xlsx("imdb (for R).xlsx", sheet=2, range = cell_cols(c("A","B"))) 
#cell_cols() will be A and B and so on.... for all the columns or 1,2 and so on for the columns (Not the column names)
df22

df23 <- read_xlsx("imdb (for R).xlsx", sheet=2)[,c(1,3)]
df23

# You have to mention every column this way (below) and then access and skip accordingly
# df24 <- read_xlsx("imdb (for R).xlsx",col_types=c("numeric","skip","numeric")) 


df25 <- read_xlsx("imdb (for R).xlsx") 

save(df25,file="my_saved_data.RData")
load("my_saved_data.RData")
df25
head(df25)
View(df25)
file.remove("my_saved_data.RData")



install.packages("writexl")
library("writexl")

write_xlsx(df20, "df20.xlsx")
write.csv(df20, "df20.csv")
write.table(df20, "df20.txt")
write.table(df20, "df20.txt", sep=",")
write.table(df20, "df20.txt", sep=",", rownames = F)
write.table(df20, "df20.txt", sep=",", rownames = F, append = TRUE)
write.table(df20, "df20.txt", sep=",", rownames = F, append = TRUE, col.names = FALSE)



