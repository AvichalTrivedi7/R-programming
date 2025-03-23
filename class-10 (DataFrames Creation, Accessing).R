# DataFrames in R (DataFrames can store multiple types of datatypes in different columns)

# Creating an  empty data frame in R
data1 <- data.frame(Name=character(),Gender=character(),Age=numeric(),Weight=numeric(),height=numeric())
str(data1)

# Creating a dataframe with values
student <- data.frame(name=c("A","B","C","D","E","F","G"),gender=c("Male","Female","Female","Male","Male","Female","Male"),age=c(10,20,12,14,16,15,17),weight=c(26,35,28,30,31,29,34))
student
str(student)

# We can create a vectors beforehand and then declare the dataframe as well.

# Creating dataframe using list()
name=c("A","B","C","D","E","F","G");gender=c("Male","Female","Female","Male","Male","Female","Male");age=c(10,20,12,14,16,15,17);weight=c(26,35,28,30,31,29,34)

student.list <- list(name=name,gender=gender,age=age,weight=weight)
class(student.list)
list
d <- data.frame(student.list);d

# In dataframes, the arguments in the rows must be equal in all columns, otherwise there will be error

# Creating dataframe using matrix()

mat <- matrix(1:9,nrow=3,ncol=3)
try1 <- data.frame(mat);try1
gender1=c('male','female','male','female','male','female','male','male','female')
age1=c(10,12,23,34,12,23,23,34,55)
try2 <- data.frame(mat,gender1,age1);try2

# head() [shows top 6 rows by default] and tail() [shows bottom 6 rows by default]

head(d,3)
tail(d,7)

# Accessing the elements of a dataframe
 
d[1,]
d[,3,drop=FALSE]
d[7,4]
d[1:2,3]
d[-2,]


