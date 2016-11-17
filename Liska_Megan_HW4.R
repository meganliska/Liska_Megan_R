#Megan Liska
#HW 4

##Prof G - Need more documentation about what's 
##Prof G - going on with some of your solutions.

##Question1
#a).
c(1:20)
#b).
c(20:1)
#c).
c(1:20,19:1)
#d).
tmp <- c(4,6,3) #creates vector tmp
#e).
rep(tmp,10) #rep repeats the first argument 
#f).  
rep(tmp,l=31)
#g).
rep(tmp,times = c(10,20,30))

##Question 2
x <- seq(3,6,by=0.1) #seq builds a vector of values from 3 to 6 incriminted by .1 
exp(x)*cos(x) #multiplies e^x by cos(x) for each value of x

##Question 3
#a).
(0.1^seq(3,36,by=3))*(0.2^seq(1,34,by=3))
#b).
(2^seq(1,25,by=1))/(1:25) 

##Question 4
#a).
##Prof G - This should be 10, 100
i = seq(1,100,by=1) #create i which goes from 1 to 100 incrimented by 1
sum(i^3+4*i^2) #sum creates an finite sum of the values of i
#b).
i = seq(1,25,by=1) #same procedure as part a
sum(2^i/i + 3^i/i^2)

##Question 5
#a).
paste('label',1:30) #paste converts its arguments into charcter strings
#it then seperates them by sep (second argument)
#b).
paste('fn',1:30,sep = "")#make sure no space between fn and number

##Question 6
#Execute the following lines which creates two vectors of random integers
#with length 250
set.seed(50) 
xVec <- sample(0:999,250,replace=T) #Explain sample and its arguments 
yVec <- sample(0:999,250,replace=T)
#given lines of code from question

#a).
yVec[c(2:250)]-xVec[c(1:249)] #subtracts x from y
#b).
sin(yVec[c(1:249)])/cos(xVec[c(2:250)])
#c).
xVec[c(1:248)]+2*xVec[c(2:249)]-xVec[c(3:250)]
#d).
sum(exp(-xVec[c(2:250)])/(xVec[c(1:249)]+10)) #calculates a sum

##Question 7 
set.seed(50)
xVec <- sample(0:999,250,replace=T)
yVec <- sample(0:999,250,replace=T)
#a).
y600 <- yVec[yVec>600]
y600
#b).
which(yVec>600)
#c).
x600<-xVec[yVec>600]
x600
#d).
sqrt(abs(xVec-mean(xVec)))
#e).
sum(yVec>max(yVec)-200)
#f).
sum(xVec%%2==0)
#g).
xVec[order(yVec)]
#h).
yVec[c(T,F,F)]

##Question 8
1+sum(cumprod(seq(2,38,by=2)/seq(3,39,by=2))) 
#cumprod takes the cumulative product of an array of elements






