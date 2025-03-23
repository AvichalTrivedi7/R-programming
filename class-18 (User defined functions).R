# Defining user define functions

# function_name <- function(arg1, arg2, ...){
#  expression_1
#  expression_2
#  ...
#  expression_n
# }

power1 <- function(x,n){x^n}
power1(2,3)



power2 <- function(x,n){y=x^n
return(y)
}
power2(2,3)



power3 <- function(x,n)
  {y=x^n
  return(y)
}
power3(2,3)

# After return, statements do not run.



power4 <- function(x,n)
{x^n
x+n
}
power4(2,3) # Only last statement will be executed and returned, over here it is x+n.



power5 <- function(x,n)
{y=x^n
z=x+n
return(y,z)
}
power5(2,3) # Not allowed multi return statements



powersum <- function(x,n)
{y=x^n
z=x+n
a = c("Power -->",y,"Sum -->",z)
return(a)  
}
powersum(2,3) 
