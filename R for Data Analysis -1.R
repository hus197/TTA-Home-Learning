library(tidyverse)
mpg

#displ on the x-axis and hwy on the y-axis:
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy))

#adding colour to data points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, color = class))

ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy), color = "blue")


#chaning size of data points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, size = class))

#aplha changes transparency of points
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, alpha = class))

#changin data points shape
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy, shape = class))




#bar chart
ggplot(data=mpg, aes(x=manufacturer, y=cty)) +
  geom_bar(stat="identity", width=0.5)

# Change colors
ggplot(data=mpg, aes(x=manufacturer, y=cty)) +
  geom_bar(stat="identity", color="blue", fill="white")

# Minimal theme + blue fill color
ggplot(data=mpg, aes(x=manufacturer, y=cty)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme_minimal()
