#creating vectors using c()

x = c(2,3,4,7)
y = c(1,"a",3,4)
z= c(1L,2L,3L,4L)

#creating vectors using : 
a=1
b=5
v=a:b
v2=1.5:5.4 #increment is always one

#use of seq() function [it's like range() from python]
seq(1,8, by = 2) 
seq(1,8,2) # step up 1, don't need to write by 
seq(8,1) #-1 and 1 automatically R detects and puts
seq(8,0,-2) #both start and end values are included
seq(1,8, length =3) #it gives 3 values with equal spacing (like quartiles [len=4], deciles [len=10] and percentiles [len=100])