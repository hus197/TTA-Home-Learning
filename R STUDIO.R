## Homelearning Task
# 1. Matrix
Apple <- c(1,2,3,4,5)
Banana <- c(6,7,8,9,10)
Coconut <- c(11,12,13,14,15)

newmatrix <- rbind(a,b,c)
print(newmatrix)


matplot(newmatrix,main="My Graph", xlab="The x-axis", ylab="The y axis", type ="o", pch=15)

# 2. Data Frames
Name <- c("Anthony", "Julia", "John", "Boris", "Abdu")
Age <- c(25, 30, 35, 40, 45)
Role <- c("TA", "IT", "DS", "Analyst", "QA")
Length_of_service <- c(13, 17, 16, 19, 20)

frame <- data.frame(Name, Age, Role, Length_of_service)
print(frame)


# 3. Use ggplot2 and draw a graph using qplot

install.packages("ggplot2")
library("ggplot2")


x <- c(1:20)
print(x)
y <- x^2
print(y)

qplot(x, y)
qplot(x, y, geom=c("point", "line"))

# 4. Simple bar plot
subjects = c("Eng", "Maths", "Sci", "Social", "French")
marks = c(80, 78, 98, 87, 70)

barplot(marks, names.arg=subjects, main="Bar Plot Graph", 
        xlab="Subjects", ylab="Marks", col='blue', border='red')

# 5. Take input from user
Name <- readline("Julia:")
Age <- readline("30:")

display <- paste("Name is", name, "and age is", age)
print(display)

# 6. Create a sequence and find mean
seq <- c(20:50)
print(seq)
mean <- mean(seq)
sum <- sum(seq)
values <- paste("Mean and sum of numbers from 20 to 50 are", mean,"and", sum)
print(values)

# 7. Random number
random <- sample(-50:50, 10, replace=FALSE)
print("Random Integer values between -50 and 50 are:")
random


