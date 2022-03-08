# Comments with a hash tag (just as in Python)
# Storing Variables

name <- "Ahmad"
surname <- "Mohamad"
pet <- "Cat"
print(Ahmad)
print(Mohamad)
print(Cat)

# user input - readline function and pasting
name2 <- readline("Enter your name: ")
paste("Welcome", name2)

# data types

# main data types in R:
# numerical:
#   double
#   integer
# 
# character
# logical

#1D data types
# vectors
# lists

#2D data types
# matrix
# data frame

name3 <- "Andy"
print(name3)

title <- "Data Academy"
typeof(title)

#doubles, integers, and characters
var <- 123L
typeof(var)


#logical
flag <- F
typeof(flag)
is.logical(flag)

#vectors - can store multiple values but MUST be the same data type
my_vec <-c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
my_vec
my_vec[1]
my_vec[3] <- "Saturday"
my_vec


#lists - can store mixed data types
info <- list(21L, 165.00, "Lisa", TRUE)
info

info <- list(age=21L, height=165L, name="Lisa", employed=TRUE) 
info
info["name"]

info["airport"] <- "JFK"

#recalling and removing objects in memory
ls() 
rm(info)

#arithmetic
num1 <- 10
num2 <- 4

num1 + num2
num1 - num2
num1 * num2

5**2
6.5/2

# Comparison operators. Exactly the same as in Python. 
# Equality ==
# Inequality !=
# Greater than >
# Greater than or equal to >=
# Less than <
# Less than or equal to <=

nil <- 0
num <- 0
max <- 1

nil != max
nil > max
nil < max

#if statements and else statements

if (5 > 1) {
  print ("five is greater than one")
} 


number <- 15

if (number < 10) {
  print("Number is less than 10")
} else if (number == 15) {
  print("We are bang on!")
} else {
  print("Number is greater than ")
}


# basic plotting. You can conduct basic plots in R without importing a library
x <- c(1, 3, 4, 5, 6)
y <- c(21, 5, 7, 9, 3)


plot(x, y)

plot(x, y, type="o")

?plot

#adding more visual parameters

firstQ  <- c(Jan=2000, Feb=1200, Mar=2700)
secondQ <- c(Apr=1600, May=2500, June=3100)
thirdQ  <- c(Jul=4250, Aug=3600, Sep=3000)
fourthQ <- c(Oct=2100, Nov=1900, Dec=3560) 

#combining all 4 vectors

wholeYear <- c(firstQ, secondQ, thirdQ, fourthQ)
wholeYear

#plotting vectors - specifying type, colour and point of characters.  
#pch = point character of the points on the graph 
plot(wholeYear, type ="o", col="blue", pch=16)



#Turning off annotation and axes labels.

plot(wholeYear, type ="b", col="blue", pch=1, xaxt="n", xlab="Months", ylab="Sales")

#adding range and annotation for x and y axis

axis(1, at=1:12, lab=names(wholeYear))


# add titles 
title(xlab= "Month", ylab = "Sales", main = "Yearly Sales Figures", col.main="Red")

# Matrices
data <- seq(1:32)
my_matrix <- matrix(data, nrow=4, ncol=8)
my_matrix

print(data)

ny <- c(3.8,5.5,9.9,15.7,21.5,26.3)
la <- c(19.5,19.4,19.7,20.8,21.3,22.7)
sf <- c(13.7,15.4,20.0,24.6,28.5,32.7)

combined_mat <- rbind(ny,la,sf)
combined_mat

matplot(combined_mat, type ="o", pch=15, col=1:3)


# data frames - can store mixed data types
city <- c("NY", "LA", "Vegas")
rainfall <- c(20L, 10L, 5L)
sun <- c(FALSE, TRUE, TRUE)

frame <- data.frame(city, rainfall, sun)  

print (frame)


#R lesson part 2

# gglot2 is a library that can be used to create more sophisticated plots
install.packages("ggplot2")
library(ggplot2)

# to find a toy data set
data(package = "ggplot2")


#Scatter plot with qplot

ggplot2::mpg

qplot(data = mpg, x = cty, y = hwy, geom = "point", color = class)

# bar plot and stacked bar plot

ggplot2::diamonds

?diamonds
diamonds

qplot(data = diamonds, y = clarity, geom = "bar", fill = cut)

#  fill = cut 


