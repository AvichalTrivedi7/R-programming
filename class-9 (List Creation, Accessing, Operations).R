# List in R

# Lists are generic vectors where each element can be any type of object
# a vector, a matrix, a dataframe, an array, even normal numbers ... it can have anything inside of it. (maybe functions too)

# Creating an empty list
List_01 <- list()
List_01

# Creating an empty list of length 4
List_01 <- vector("list",length=4)
List_01

#If you don't give mode value it creates a double using vector function
double_value=vector()
double_value=2
double_value
typeof(double_value)

# syntax ---> list(name_1=object_1,name_2=object_2,...,name_m=object_m)
# Creating a  list

list1 <- list(1.34,c("Bob","John"),TRUE,1+2i)
list1

length(list1)
mode(list1)
is.list(list1)

# Creating a named list in R

list2 <- list(value=1.34,names=c("Bob","John"),TRUE,1+2i)
list2

# Concatenation of list 

list3 <- list(A=1:4, B=c("Male","Female"), C=matrix(1:4,nrow=2))
list4 <- list(P=1:5, Q=c(TRUE,FALSE))
list_combine <- c(list3,list4)
list_combine

# Append in list (Works the same as c() in concatenation)

New_list <- append(list3,list4)
New_list

# Nested list

lis1=list(c(5,6),c(5,6,7))
lis2=list(c(1,2),c(1,2,3))
list5 <- list(lis1,lis2)
list5

# Accessing components in a list
list3[[2]]
list3$B
list3[["B"]]

list3[[2]][1]
list3$B[1]
list3[["B"]][1]