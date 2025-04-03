View(iris)
plot(iris$Sepal.Length, iris$Sepal.Width)

plot(iris$Sepal.Length, iris$Sepal.Width, pch=4)

plot(iris$Sepal.Length, iris$Sepal.Width, axes=FALSE)

plot(iris$Sepal.Length, iris$Sepal.Width, xlab="Sepal Length", ylab="Sepal Width", main="Scatter Plot", sub="cool stuff", xlim=c(4,8), type='b', col=2, font=2, adj= 0.1, cex=2)

# xlim, ylim specifies lower and upper limits for axes (can also be used as xlim=range(...))
# type='p' (default)
# type='l' (Plot lines)
# type='b' (Points and lines)
# type='o' (Points overlaid by lines)
# type='h' (Vertical lines from points to the zero axis)
# type='s' 
# type='S' (Step function plots)
# type='p' (No plotting, axes are drawn and coordinate system according to data)

# lty (line type) (for bar graphs or histrogams)
# lwd (line width) (for bar graphs or histrogams)

# col.axis, col.lab, col.main, col.sub (sub is for subtitle) - for color of text/plot
# font.axis, font.lab, font.main, font.sub - for font style of text/plot
# adj=0 for left justified, adj=1 for right justified, adj=0.5 for middle justified 
# cex.axis, cex.lab, cex.main, cex.sub - (character expansion)(text size/plot points size increase or decrease [1 default])
