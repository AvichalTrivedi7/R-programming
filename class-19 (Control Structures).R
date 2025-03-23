# Control Structures

# if-else

a=5
b=3
if (a>=0){print("non-negative")}
if (b<0){print("negative")}

c=-1
if (c>=0){print("non-negative")}else{print("negative")}

d=0
if (d>0){print("positive")
  }else if (d==0){print("zero")
    }else {print("negative")}

e=-2
if (e<0){print("negative")}
if (e>0){print("positive")}



# for loop

for (i in 1:10){
  print(i*i)
}



sum=0
for (i in 1:10){
  sum=sum+i
}
print(sum)



sum_sqr=0
for (i in 1:10){
  sum_sqr=sum_sqr+(i*i)
}
print(sum_sqr)



sum=0
x=c(24,25,26,27,28,29)
for (i in x){
  sum=sum+i
}
print(sum)



mat1 = matrix(c(5,10,15,20,25,30),nrow=3,byrow=T)
sum=0
for (i in mat1){
  sum=sum+i
}
print(sum)

# mat1[1,] will access the first row only, and can be used as well.






