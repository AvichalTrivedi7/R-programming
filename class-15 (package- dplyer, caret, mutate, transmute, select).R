install.packages("dplyr")
library(dplyr)

install.packages("caret")
library(caret)

data(cars)
head(cars)
str(cars)
class(cars)

# Add more attributes to your dataframe using mutate.

d6 <- mutate(cars, Price_Commission=Price*0.01, Cyl2=2+Cylinder)
head(d6)

# Show only these two attributes and remove the rest using transmute.

d8 <- transmute(cars, Price_Commission=Price*0.01, Cyl2=2+Cylinder)
head(d8) 

# Select using select (to view)

select(cars, Price, Mileage, Cylinder, Doors)
cars1 <- select(cars, Price, Mileage, Cylinder, Doors)
head(cars1)
class(cars1)


cars2 <- select(cars1, -(2:4))
head(cars2)

cars3 <- select(cars1, -c(2,4)) # Handling attributes (columns)
head(cars3)

cars4 <- select(cars1, starts_with("C")) #starts_with argument.
head(cars4)

# Can also use the arguments ends_with(""), contains(""), matches(""), num_range("",1:5), one_of(x).

cars5 <- select(cars1, one_of("Cylinder","Mileage"))
head(cars5)



