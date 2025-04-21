install.packages("ggplot2")
library(ggplot2)

ggplot(data=mpg)

ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ,y = hwy))

View(mpg)

ggplot(data=mpg)+
  geom_line(mapping = aes(x=displ,y = hwy))

ggplot(data=mpg)+
  geom_smooth(mapping = aes(x=displ,y = hwy))


ggplot(data=mpg)+
  geom_bar(mapping = aes(x=displ,y = hwy)) # Since it needs nominal/ordinal data to plot bar graph hence it shows error.

#Fixing that
ggplot(data=mpg)+
  geom_bar(mapping = aes(x=model)) # Only one variable required other will automatically be count [on y-axis]


ggplot(data=mpg)+
  geom_polygon(mapping = aes(x=displ,y = hwy))

ggplot(data=mpg)+
  geom_map(mapping = aes(x=displ,y = hwy)) #Error in this too, will rectify



ggplot(data=mpg)+
  geom_point(mapping = aes(x=displ,y = hwy))+
  geom_smooth(mapping = aes(x=displ, y = hwy))


g <- ggplot(data=mpg)+
  geom_bar(mapping = aes(x=class,y = hwy), stat = "identity")+ # Instead of y becoming count by default we declared it as hwy using the stat argument.
  coord_flip() # flips the axis
  

print(g)

# Adding a title
g <- g + ggtitle("Mileage vs Make")
g

# Editing the title
g <- g + theme(plot.title = element_text(size = 14, face = "bold", margin = margin(10,0,10,0), lineheight=1.5))
g

# Adding multiline heading title
g <- ggplot(data=mpg)+
  geom_bar(mapping = aes(x=class,y = hwy), stat = "identity")+
  coord_flip()

g <- g + ggtitle("Mileage\n vs\n Make")
g

# Adding x and y axis labels (labs(),xlab())
f <- g + labs(x="Mileage per hour", y="type of car", title="Bar Diagram")
f

# Change size of and rotate tick text (axis.text.x)
f <- f + theme(axis.text.y = element_text(angle=50, size=10, vjust=0.2)) #vjust moves the labels towards the graph
f
