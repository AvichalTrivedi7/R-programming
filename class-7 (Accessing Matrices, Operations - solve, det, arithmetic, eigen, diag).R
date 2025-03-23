# Using this from previous class
mat1 <- matrix(1:9,nrow=3,byrow=TRUE)

#How to access all the elements in first and third row and third column 

# 1st way
mat1[-2,3] 
# 2nd way
mat1[c(1,3),3]

# Using this from previous class

mat2 <- matrix(c(52,56,81,46,143,143,37,34),nrow=2,dimnames=list(c("Female","Male"),c("Black","Blond","Brown","Red")))
mat2["Male",] #You can use names of the rows/columns to access the elements too (instead of indices)

# Operations on matrices

# Scalar Multiplication
A <- matrix(c(1,2,3,4),nrow=2)
A
A*3

# Addition
B <- matrix(c(4,5,5,3),nrow=2)
A+B

# Subtraction
A-B

# A*A is element wise multiplication and A%*%A is actual matrix multiplication
A*A
A%*%A

# Transpose of a matrix or a dataframe
t(A)

# A^(-1) is element wise inverse and solve(A) is actual matrix inverse (adj(A)/det(A))
A^(-1)
solve(A)

# To check if the inverse is correct or not we multiply it with the Original matrix
A%*%solve(A)

# Determinant of a matrix
det(A)

# Eigen values and Eigen vectors
eigen(A)

# Other operations
diag(c(1,3,7)) #Makes a diagonal matrix using the argument values in the diagonal 
diag(A) #Gives the main diagonal elements of the matrix in the argument
diag(2) #Gives an identity matrix of order as given number in the argument

rowSums(A) #Gives sums of elements in all the rows separately
rowMeans(A) #Gives means of elements in all the rows separately

colSums(A) #Gives sums of elements in all the columns separately
colMeans(A) #Gives means of elements in all the columns separately
