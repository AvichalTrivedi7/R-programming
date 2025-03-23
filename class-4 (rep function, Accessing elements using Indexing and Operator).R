# TRUE can also be written as T, same with F for FALSE
Im(5+4i)
Re(5+4i)
Mod(-5)
Conj(5+4i)

#rep(v1,n1) function repeats vector v1, n1 times.
v=c(1,2,3)
y=rep(v,3)
times_ex = rep(v,times=3) #default is times
each_ex = rep(v,each=3) #each element iterated the amount of times needed at once
length_ex = rep(v,length=3) #just length returns the same vector

rep(v,c(3,1,5)) #elements can be repeated according to ordering (first-3times,second-5, and so on)
rep(v,each=2,length=4)
rep(v,each=3,times=5)
rep(v,length=4,times=5)

#Accessing elements using operator
age.1=seq(1,10,2)
age.1[1:2] #accessing using : operator

age.1[c(1,3)] #accessing specific elements [using indices] using c() function
age.1[4] #accessing directly using index
age.1 # shows all elements
age.1[-1] #shows the vector excluding the first element
age.1[c(-1,-3)] #shows the vector excluding the elements mentioned
age.1[-1:-3] #removes elements mentioned 
age.1[-(1:3)]
age.1[-c(1,4)] #removes the elements mentioned [using indices] using c() function
