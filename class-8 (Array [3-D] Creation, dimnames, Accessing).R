# Strata ---> [Each matrix (2-D) of an array (3-D)] 

# Syntax to make an array

# array(data,dim,dimnames)

empty_array = array(dim=c(2,3,2))
empty_array

zero_array = array(0,dim=c(2,3,2))
zero_array

my_array_1 = array(1:12, dim=c(3,2,2))
my_array_1

# Re-Iteration is done of the elements if elements do not match the multiple of dimensions (basically size of the array)
my_array_2 = array(1:12, dim=c(3,3,2))
my_array_2

# More elements, less space will make the iteration of elements stop early.
my_array_3 = array(1:15, dim=c(3,2,2))
my_array_3

# Creating an array with dimension names

d1 <- c("Row1","Row2","Row3")
d2 <- c("Col1","Col2")
d3 <- c("Strata1","Strata2")
my_array=array(1:12,c(3,2,2),dimnames=list(d1,d2,d3))
my_array

# Creating an array from a vector using dim()

vec1 = 1:12
is.array(vec1) 
dim(vec1) = c(3,2,2) # If we give 2 dimensions it will create a matrix
is.array(vec1)
vec1

# Reshaping an existing array

dim(vec1) <- c(2,2,3)
vec1

# Removing dimension names from an array (or matrix) one by one

rownames(my_array) <- NULL
colnames(my_array) <- NULL

my_array

# Removing dimension names from an array (or matrix) together

dimnames(my_array) <- NULL

# Accessing array elements using index

myarray = array(1:12,dim = c(3,2,2), dimnames = list(c("R1","R2","R3"),c("C1","C2"),c("S1","S2")))
myarray

myarray[3,,]
#or
myarray["R3", ,]     # Accessing 3rd row from both Stratas

myarray[,2,]
#or
myarray[,"C2",]      # Accessing 2nd column from both Stratas


myarray[,,1]
#or
myarray[,,"S1"]      # Accessing 1st Strata 


myarray[c(1,3),,1]
#or
myarray[c("R1","R3"),,"S1"]      # Accessing !st and 3rd row from Strata1
#or
myarray[-2,1]

myarray[-2,-2,]         # Accessing 1st and 3rd Rows from both Stratas

