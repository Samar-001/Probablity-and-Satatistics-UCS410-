"Samarjot Singh          Assignment 3"

# Q1
paste("Probability of getting 7,8 or 9, 6's out of 12 trials of dice rolls is ", diff(pbinom(c(6, 9), 12, prob=1/6)))


# Q2
passte("The percentage of students scoring 84 or more in the exam is ", pnorm(84, 72, 15.2, lower.tail=FALSE))


# Q3
paste("Probability that no car arrives from 10am to 11am is :", dpois(0, 5))


# Q4
paste("Probability of exactly 3 defectives in the sample is :", dhyper(3, m = 17, n = 233, k = 5))


# Q5
n = 42
p = 0.447

# (a)
x = dbinom(0:42, n, p)
"Distribution of X is:"
x

# (b)
"The probability mass function of X is:"
plot(0:n, x, type="o")

# (c)
"The cumulative distribution function of X is:"
plot(0:n, x, type="o")

# (d)
paste("Mean of X is:", sum(x*p))

paste("Variance of X is:", sum((x-sum(x*p))^2*x))

paste("Standard Deviation of X is:", sqrt(sum((x-sum(x*p))^2*x)))