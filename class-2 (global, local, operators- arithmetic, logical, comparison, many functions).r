9 ->> x
a <<- 7
# global declaration

5 -> y
z<- -10
# local declaration

+x
-x
x+y
x-y
x*y
x/y 
x^2 #or x**2
x%/%y #basically floor division

#!,&,&&,|,|| (logical operators)
#==,!=,<,>,<=,>= (relational operators or comparison operators)
x>y
x==y

#$ (df$name)[Data Frame column selection], 
#$ (lst$name)[Named list selection], 
#: (1:5)[Sequence generation], 
#%in% (5 %in% x)[Element belongs to a vector], 
#%*% (A %*% B)[Matrix multiplication], 
#~ (x~y)[Model formula]
 

#Data types in R :- integer, numerical, logical, character, complex.
#Useful functions in R :- typeof(), mode(), storage.mode(), class(), str().
typeof(45)
typeof(45L)
mode(45)
mode(45L)
storage.mode(45)
storage.mode(45L)
class(45)
class(45L)
str(45)
str(45L)

typeof(TRUE)
mode(TRUE)
class(TRUE)
str(TRUE)

typeof("R programming")
mode("R programming")
class("R programming")
str("R programming")

typeof(2+0i)
mode(2+3i)
class(2+5i)
str(2+7i)

is.integer(45)
is.integer(45L)
is.character("TRUE")
is.complex(2+0i)
is.logical(FALSE)
