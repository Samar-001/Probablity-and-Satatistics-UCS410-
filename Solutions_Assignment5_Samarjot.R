"Samarjot Singh          Assignment 5"

# Q1
# (a)
punif(45, min=0, max=60, lower.tail=FALSE)

# (b)
punif(30, min=0, max=60) - punif(20, min=0, max=60)


# Q2
# (a)
a1 <- dexp(3, rate=1/2)
a1

# (b)
x <- seq(0, 5, by=0.02)
fx <- dexp(x, rate=1/2)
plot(x, fx, xlab="x", ylab="fx", main="PDF of exponential distribution at lambda=1/2")

# (c)
a2 <- pexp(3, rate=1/2)
a2

# (d)
x <- seq(0, 5, by=0.02)
fx <- pexp(x, rate=1/2)
plot(x, fx, xlab="x", ylab="fx", main="cdf of exponential distribution at lambda=1/2")

# (e)
n <- 1000
x_sim <- rexp(n, rate=1/2)
plot(density(x_sim), xlab="Simulated x", ylab="Simulated y", main="Simulated data for exponential distribution at lambda=1/2")

hist(x_sim, probability = TRUE, xlab="Simulated x", ylab="density", main="Histogram")


# Q3
alpha <- 2
beta <- 1/3

# (a)
pgamma(x, shape=alpha, scale=beta)
a1 <- pgamma(1, shape=alpha, scale=beta, lower.tail=FALSE)
a1

# (b)
a2 <- qgamma(0.70, shape=alpha, scale=beta)
a2