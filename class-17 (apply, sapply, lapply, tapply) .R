# Functions in R
# example, sum(x), prod(x), mean(x), weighted.mean(x,w), median(x), quantile(x, probs=), sd(x), var(x), IQR(x), min() , range(), etc...

# Apply functions
# apply(), lapply(), sapply(), tapply()



# apply() takes matrix or array or dataframe an index and a function as inputs. (for entire rows/columns/stratas)
# syntax :- apply(x,MARGIN,FUNC)


# Matrix --> [row, column] (2-D)
mat1 <- matrix(c(12,14,17,18,13,20), nrow=3)
mat1
apply(mat1, 1, sum) # For row wise sum
apply(mat1, 2, mean) # For col. wise mean


# Array --> [row, column, strata] (3-D)
arr1 <- array(1:10, dim=c(2,3,2))
arr1
apply(arr1, 1, sum)
apply(arr1, 2, sum)
apply(arr1, 3, sum)


# DataFrame --> matrix but different datatype allowed (2-D)
Data_Frame <- data.frame(Training = c("Strength", "Stamina", "Other"),
                         Pulse = c(100, 150, 120),
                         Duration = c(60, 30 , 45))
Data_Frame
str(Data_Frame)

var <- apply(Data_Frame, 1, toupper) #Changes the strings to all uppercase letters and converts all into character values
str(var) # Because apply() doesn't change the main dataset that is being used

apply(Data_Frame, 2, sum)




# lapply() is used for single values instead of multiple values like apply().
# syntax :- lapply(x,FUNC,FUNC_Argument(if present)), 

# lapply() function on vector 
vec1 <- c(1.456,4.234,5.493,6.66,7.008,8.009)
vec1
lapply(vec1, round, 2)
lapply(vec1, toupper)

# matrix
lapply(mat1, exp)




# sapply() function on vector
sapply(vec1, round, 2)
sapply(vec1, toupper)

# matrix 
sapply(mat1, exp)
sapply(mat1, sum)

# The only difference between sapply() and lapply() is the sapply() gives vector and lapply() gives list as output




# tapply() used on vectors from vector itself or specific rows/columns from a matrix/dataframe/array
# tapply() on vectors
g = c("m","m","f","f","m")
s = c(10,20,30,40,50)
tapply(s, g, FUN=mean, simplify=F) # grouping according to g
tapply(s, g, FUN=mean, simplify=T) 
tapply(g, s, FUN=length, simplify=T) # grouping according to s

# DataFrame
Data_Frame2 <- data.frame(Training = c("Strength", "Stamina", "Other", "Other"),
                         Pulse = c(100, 150, 120, 120),
                         Duration = c(60, 30 , 45, 30))
tapply(Data_Frame2$Duration, Data_Frame2$Training, FUN=sum, simplify=T)




