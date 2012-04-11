#
# Reginald Edwards
# 9 April 2012
# reginald.edwards@gmail.com
#
# This script produces a plot of the population dynamics of the rabbit-coyote
# system. It relies on input data from "rabbits-and-coyotes.cpp"
#

population <- read.table("population.txt", header=FALSE, sep=" ")

names(population) <- c("t", "rabbits", "coyotes")

y.range <- range(population$rabbits, population$coyotes)

jpeg("Rabbits and Coyotes.jpg")
  plot(population$t, population$rabbits, type="l", col="red", lwd=4, ylim=y.range, xlab="t", ylab="Population", main="Rabbit and coyote populations over time")
  points(population$t, population$coyotes, type="l", col="blue", lwd=4)
  legend(5000,3, c("rabbits", "coyotes"), col=c("red","blue"), lty=1, lwd=4)
dev.off()
