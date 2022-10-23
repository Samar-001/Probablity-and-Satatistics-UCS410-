"Samarjot Singh          Assignment 4"

# Q1
x <- c(0:4)
y <- c(0.41, 0.37, 0.16, 0.05, 0.01)

a1 = c(x%*%y)
a2 = sum(x*y)
a3 = weighted.mean(x, y)
a1
a2
a3


# Q2
f <- function(t) {
  0.1*t*exp(-0.1*t)
}

Et = integrate(f, 0, Inf)
Et


# Q3
x <- c(0:3)
p <- c(0.1, 0.2, 0.2, 0.5)

a <- sum(x*p)
b <- 10*a-12
b


# Q4
f1 <- function(x){
  0.5*abs(x)*exp(-abs(x))
}

s <- integrate(f1, 1, 10)
s$value

f2 <- function(x) {
  x*x*0.5*exp(-abs(x))
}

sec <- integrate(f2, 1, 10)
sec$value

val = sec$value - (s$value)^2
val


#Q5
f5 <- function(y) {
  (3/4)*((1/4)^((y^(1/2))-1))
}

x <- 3
y <- x^2
f5(y)

x <- c(1:5)
y <- x^2

mean <- sum(y*f5(y))
mean

var <- sum(y*y*f5(y)) - mean*mean
var