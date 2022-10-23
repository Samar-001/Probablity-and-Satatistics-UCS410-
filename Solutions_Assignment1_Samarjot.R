"Samarjot Singh          Assignment 1"

# Q1
c <- c(5,10,15,20,25,30)
max(c)
min(c)


# Q2
"Enter the number whose factorial is to be calculated: "
a=as.integer(readline())
factorial(a)


# Q3
"Enter the number of element of Fibonacci sequence to be calculated: "
b=as.integer(readline())
n1<-0
n2<-1

for(i in 0:(b-1)){
  if(i==0){
    nth=n1
    print(nth)
  }
  else if(i==1){
    nth=n2
    print(nth)
  }
  else{
    nth=n1+n2
    print(nth)
    n1=n2
    n2=nth
  }
}


# Q4
writeLines("Enter what operation you want to perform: \n1: Add\n2: Subtract\n3: Multiply\n4: Divide")
d=as.integer(readline())

"Enter 1st number: "
num1=as.integer(readline())
"Enter 2nd number: "
num2=as.integer(readline())

if(d==1){
  print(num1+num2)
} else if(d==2){
  print(num1-num2)
} else if(d==3){
  print(num1*num2)
} else if(d==4){
  print(num1/num2)
}


# Q5
x=c(1,2,5,8)
y=c(2,4,1,8)

plot(x,y,col="blue",pch=22,main="My Graph",xlab="X-axis",ylab="Y-axis",cex=2)
plot(x,y,type="l",col="red",lwd=2,main="My Graph",xlab="X-axis",ylab="Y-axis",lty=6)