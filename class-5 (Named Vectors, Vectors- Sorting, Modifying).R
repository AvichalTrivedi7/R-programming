#Accessing elements by logical vector
age.1=seq(1,10,2)
age.1[c(TRUE,FALSE,TRUE,FALSE,TRUE)]
age.1[age.1<7]
  


#Creating a dictionary (from python) like sequence using names() function
weight<-c(46,58,75,49,67)
names(weight)<-c("Jatin","Shruti","David","Parag","Daniel")
weight
weight[c("David","Daniel")]



#Operations on vectors (Each element of the first vector is operated with each element of the second vector)
a=c(1,3,5)
b=c(2,4,6,8,10)
a+b 
a-b
a*b
a/b
#If the vectors are unequal then the elements of the shorter vector are reiterated and operations are performed accordingly



#sort function (by default increasing)
trial<-c(1,4,2,9,3)
sort(trial) # To just show how the sorted vector would look like
sorted_trial=sort(trial) #can be stored in a variable
decreasing_trial=sort(trial,decreasing=TRUE) #Decreasing order sorting



#Modify vectors
x=-3:2
x
x[2]<-0;x #Modifying and calling vector again
x[x<0]<-5;x #Modifying all less than 5 and then calling vector again
x<-x[1:4];x #Truncating the vector (basically shortening the vector) using same modifying method



#Coercion in vectors 
#Basically converting the different datatypes to one type so that all types become same

#character + numeric = character
#character + boolean = character
#numeric + boolean = numeric
#numeric + integer = numeric


