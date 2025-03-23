library(dplyr)
library(caret)

# For columns selecting we used select(), for rows we use filter()

d2 <- filter(cars,Mileage>10000)
head(d2)
dim(d2)

unique(select(cars,Cylinder)) # only unique rows mention where and what
nrow(unique(select(cars,Cylinder))) # number of the unique rows
table(select(cars,Cylinder)) # frequency of each attribute

d3 <- filter(cars,Cylinder%in%c(4,6)) 
head(d3)
dim(d3)

d4 <- filter(cars,is.na(Mileage))
head(d4)
dim(d4)

d5 <- filter(cars,!is.na(Mileage))
head(d5)
dim(d5)

cars1 <- select(cars,1:5)
head(cars1)

d6 <- arrange(cars1,Cylinder) #ascending
head(d6)
tail(d6)

d7 <- arrange(cars1,desc(Cylinder)) #descending
head(d7)
tail(d7)

d8 <- arrange(cars1,desc(Cylinder),Doors) #descending cylinder, Doors ascending with every value of cylinder.
head(d8)
tail(d8)
View(d8)

d9 <- group_by(cars1,Cylinder)
summarise(d9, maxprice=max(Price), Avg_mil=mean(Mileage)) # we'll always use group_by and summarize together, to give us useful attributes.

# Using Pipe Operators.(Doing piping)

nrow(unique(select(cars,Cylinder))) # Instead of this
cars %>% select(Cylinder) %>% unique %>% nrow # Piping

#rename
d10 <- rename(cars1, Cyl=Cylinder)
head(d10)

