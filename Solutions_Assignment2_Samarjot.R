"Samarjot Singh          Assignment 2"

# Q1
# (a)
coins <- rep(c("Gold","Silver","Bronze"), times = c(20,30,50))
sample(coins,10)

# (b)
sample(c("Success","Failure"),10,replace=T,prob = c(0.9,0.1))


# Q2
# (a)
n = as.integer(readline("Enter number of people in room : "))
p <- numeric(n)
for (i in 1:n) {
  q <- 1 - (0:(i - 1))/365
  p[i] <- 1 - prod(q)
}

prob <- p[n]
paste("The probability of atleast two people having birthday on same day is :",prob)
plot(1:n,p,type="l",lwd=2,xlab="No. of people",ylab="Probability of match")

# (b)
t <- numeric()
i=0
while(1) {
  i=i+1
  s <- 1 - (0:(i - 1))/365
  t[i] <- 1 - prod(s)
  if(t[i]>=0.5){
    break
  }
}

paste("Atleast",i,"people are required for which the probability of a match is greater than 50%.")


# Q3
c.prob <- function(c,r,cr) {
  return(as.numeric(cr*r/c))
}

p_c = as.numeric(readline("Enter probability of Cloudy weather : "))
p_r = as.numeric(readline("Enter probability of Rain : "))
p_cafterr = as.numeric(readline("Enter probability of Cloudy weather while Raining : "))

p_rafterc = c.prob(p_c,p_r,p_cafterr)

paste("Probability of Rain after Cloudy weather is : ",p_rafterc)


# Q4
library(datasets)
data(iris)

# (a)
head(iris,10)

# (b)
str(iris)

# (c)
paste("Sepal length varies from",min(iris$Sepal.Length),"to",max(iris$Sepal.Length))

# (d)
paste("Mean of the sepal length is",mean(iris$Sepal.Length))

# (e)
paste("Median of the sepal length is",median(iris$Sepal.Length))

# (f)
paste("1st quartile of the sepal length is",quantile(iris$Sepal.Length,0.25),", 3rd quartile is",quantile(iris$Sepal.Length,0.75),"and the interquartile range is",IQR(iris$Sepal.Length))

# (g)
paste("Variance of the sepal length is",var(iris$Sepal.Length),"and standard deviation is",sd(iris$Sepal.Length))

# (h)
paste("Sepal width varies from",min(iris$Sepal.Width),"to",max(iris$Sepal.Width))
paste("Mean of the sepal width is",mean(iris$Sepal.Width))
paste("Median of the sepal width is",median(iris$Sepal.Width))
paste("1st quartile of the sepal width is",quantile(iris$Sepal.Width,0.25),", 3rd quartile is",quantile(iris$Sepal.Width,0.75),"and the interquartile range is",IQR(iris$Sepal.Width))
paste("Variance of the sepal width is",var(iris$Sepal.Width),"and standard deviation is",sd(iris$Sepal.Width))

paste("Petal length varies from",min(iris$Petal.Length),"to",max(iris$Petal.Length))
paste("Mean of the petal length is",mean(iris$Petal.Length))
paste("Median of the petal length is",median(iris$Petal.Length))
paste("1st quartile of the petal length is",quantile(iris$Petal.Length,0.25),", 3rd quartile is",quantile(iris$Petal.Length,0.75),"and the interquartile range is",IQR(iris$Petal.Length))
paste("Variance of the petal length is",var(iris$Petal.Length),"and standard deviation is",sd(iris$Petal.Length))

paste("Petal width varies from",min(iris$Petal.Width),"to",max(iris$Petal.Width))
paste("Mean of the petal width is",mean(iris$Petal.Width))
paste("Median of the petal width is",median(iris$Petal.Width))
paste("1st quartile of the petal width is",quantile(iris$Petal.Width,0.25),", 3rd quartile is",quantile(iris$Petal.Width,0.75),"and the interquartile range is",IQR(iris$Petal.Width))
paste("Variance of the petal width is",var(iris$Petal.Width),"and standard deviation is",sd(iris$Petal.Width))

# (i)
summary(iris)


# Q5
calc_mode <- function(a) {
  max_count=0
  for(i in 1:length(a)){
    count=0
    for(j in i:length(a)){
      if(a[i]==a[j]){
        count=count+1
      }
    }
    if(count>max_count){
      max_count <- count
      m_mode<-a[i]
    }
  }
  return (c(m_mode,max_count))
}

v <- c(2,7,3,5,6,7,6,7,8,8,7,2,9,8,4,7,5,5,7,8,9,6,7,1,2,3,7,8,9,2,8,2,8,7,4,7,5,6,2,5)
paste("The mode of given vector is",calc_mode(v)[1],"occuring",calc_mode(v)[2],"times.")