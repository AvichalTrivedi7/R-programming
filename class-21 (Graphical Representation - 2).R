plot(iris$Sepal.Length)
plot(iris$Species, iris$Sepal.Width)
plot(iris)
plot(~iris$Sepal.Length+iris$Sepal.Width+iris$Petal.Length+iris$Petal.Width)

#qqnorm, qqline, qqplot

attach(iris)
boxplot(Sepal.Length, ylab="Sepal Length")
f = fivenum(Sepal.Length)
text(rep(1.35,5), f, labels=c("minimum", "lower hinge", "median", "upper hinge", "maximum"), cex.axis=1.5, col="red")

par(mfrow=c(1,2)) # Try with c(2,1), to arrange the plots row wise.
boxplot(Sepal.Length~Species, main="Sepal Length", xlab="Species", ylab="Sepal Length")
boxplot(Sepal.Width~Species, main="Sepal Width", xlab="Species", ylab="Sepal Width")
