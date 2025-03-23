# syntax for creating matrices ----> matrix(data,nrow,ncol,byrow,dimnames)


# Creating an empty matrix

empty_matrix=matrix(nrow=3,ncol=4)
print(Empty_Matrix)

# Creating a zero matrix

zero_matrix <- matrix(0,nrow=3,ncol=4)
zero_matrix

# Creating a matrix from a vector (By default column wise)

B <- matrix(1:9,nrow=3,ncol=3)
B
B1 <- matrix(1:9)

# Creating a matrix from a vector (row-wise)
D <- matrix(1:9,nrow=3,byrow=T)
D

C <- matrix(1:9,nrow=4) #Must be a multiple of the number of elements, hence error
C #it will still repeat the numbers and create a martix

# Creating a matrix from vector using dimension attributes
da1 <- c(1,2,3,4,5,6)
class(da1)
dim(da1) <- c(2,3) #2 is for rows and 3 is for columns
da1
class(da1)

# Creating a matrix with dimension names
da2 <- matrix(c(52,56,81,46,143,143,37,34),nrow=2,dimnames=list(c("Female","Male"),c("Black","Blond","Brown","Red")))
da2

dimnames(da2) #Shows the names of rows and columns

C2 <- matrix(11:16,nrow=2)
rownames(C2) <- c("Row1","Row2")
colnames(C2) <- c("Col1","Col2","Col3")
dimnames(C2)
C2

# Creating a matrix with cbind() and rbind() funtions

C3 <- cbind(c(1,2),c(3,4)) #Basically column wise matrix
C3

C4 <- rbind(c(10,13),c(23,34)) #Basically row wise matrix
C4

# Combining matrices using cbind() and rbind()

C5 <- cbind(C3,C4) #number of rows must be same (as it is combined from rightside)
C6 <- rbind(C4,C3) #number of columns must be same (as it is combined from below)
C5
C6

# Accessing Rows/Columns using index in a matrix

mat1 <- matrix(1:9,nrow=3,byrow=TRUE)
mat1
mat1[1,3]
mat1[1:2,3]
mat1[1,]
mat1[1,,drop=FALSE] #shows the elements as they are there in the matrix
mat1[,3]
mat1[,3,drop=FALSE] #shows the elements as they are there in the matrix

