# Using last class' dataframe
name=c("A","B","C","D","E","F","G");gender=c("Male","Female","Female","Male","Male","Female","Male");age=c(10,20,12,14,16,15,17);weight=c(26,35,28,30,31,29,34)

student.list <- list(name=name,gender=gender,age=age,weight=weight)
student <- data.frame(student.list)

# Accessing variables of data frame using brackets (number or name), double brackets, $ sign and name

student[c("age","gender")]
student[,"age"]
student$age
student[["age"]]

# Conditional selection from a data frame

student[student$gender=="Female" & student$age>12,]

# Using subset() function
# Selecting all columns

subset(student,gender == "Female")
subset(student,gender == "Female" & age < 14)

# Selecting specific columns using select argument in select function()
subset(student,gender=="Female",select=c(age,weight))
subset(student,gender=="Male",select=-age)

# Adding Columns/Rows from a dataframe
height <- c(155,153,165,162,158,156,168)
student$height <- height
student

    # Using cbind

result <- c("Pass","Fail","Pass","Fail","Pass","Pass","Pass")
student <- cbind(student,result)
student

    # Using rbind

new <- c("H","Male","23","40","159","Fail")
student <- rbind(student,new)
student

# Remove Columns/Rows from a dataframe
    # Using NULL
student$result <- NULL
student

    # Using c()
student <- student[-c(7,8),]
student
