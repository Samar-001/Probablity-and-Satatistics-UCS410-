"Samarjot Singh          Assignment 8"


# Q1
# (a)
# Reading the dataset
# data <- read.csv(file.choose())
data <- read.csv(file = "./Clt-data.csv")


# (b)
dim(data)
head(data, 10)


# (c)
mean(data$Wall.Thickness)
hist(data$Wall.Thickness)


# (d)
abline(v = mean(data$Wall.Thickness), col = "red", lwd = 2)


"The data is not normally distributed."


# Q2
# (a)
n <- 9000
s10 <- c()
for (i in 1:n)
{
  s10[i] <- mean(sample(data$Wall.Thickness, 10, replace = TRUE))
}

hist(s10)
abline(v = mean(s10), col = "red", lwd = 2)


# (b)
"For size 50"
n <- 9000
s50 <- c()
for (i in 1:n)
{
  s50[i] <- mean(sample(data$Wall.Thickness, 50, replace = TRUE))
}

hist(s50)
abline(v = mean(s50), col = "red", lwd = 2)

"For size 500"
n <- 9000
s500 <- c()
for (i in 1:n)
{
  s500[i] <- mean(sample(data$Wall.Thickness, 500, replace = TRUE))
}

hist(s500)
abline(v = mean(s500), col = "red", lwd = 2)

"For size 9000"
n <- 9000
s9000 <- c()
for (i in 1:n)
{
  s9000[i] <- mean(sample(data$Wall.Thickness, 9000, replace = TRUE))
}

hist(s9000)
abline(v = mean(s9000), col = "red", lwd = 2)