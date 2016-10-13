#HW 5
#Group C
#1 print to console all methods and attributes associated with a dataframe
require(ggplot2)#we need this cause diamonds is in ggplot2
#1b write code to determine the number of columns in a dataframe
#since our code needs to work with any dataframe our answers will be
#functions that accept a dataframe as its input

methodcol <- function(x){
  #methodcol takes a dataframe and prints to the console
  #all methods and attributes associated with it. It also prints
  #the number of columns in the dataframe
  
  print(attributes(x))#gives the attributes of the dataset
  print(methods(class = "data.frame")) #methods will print
  #we set the class as data frame to 
 
  
  print(ncol(x)) #gives the number of columns
}


methodcol("diamonds") #test case with the diamonds dataframe
#-------------------------------------------------------------
#2- write code to determine how many rows are in a dataframe
rownumber <- function(x){
  #rownumber takes a dataframe and determines how many rows it has
  print(nrow(x)) #nrow gives the number of rows 
  
}

rownumber(diamonds) #test case 
#-------------------------------------------------------------
#3- write code to extract the column names from a dataframe and print 
#the names of the columns (one per line) to the console
columnnumber <- (x){
  #columnnumber takes a dataframe, extracts the column names and prints 
  #them to the console one per line
  cat(colnames(x), sep = "\n")#gives the names of the columns
  #state what cat does 
  
}

columnnumber(diamonds) #test case 
#------------------------------------------------------------
#4 write code to determine the type of each column and print
#them to the console
columnclass <- function(x){
  #columnclass takes a dataframe and determines the type of each column
  #and prints that information to the console
  sapply(diamonds, class)#class of the columns 
  
}


#5 we want to use the function lapply 
columnmean <- function(x){
  #columnmean takes a dataframe as its input, calculates the mean of the
  #numeric columns and labels the output with the mean of the column
  numeric <- sapply(x,is.numeric) #sapply applies is.numeric to each column
  #in the dataframe
  print(sapply(x[,numeric], mean)) #sapply then applies mean to the numeric
  #columns of the dataframe and prints them 
}
columnmean(diamonds) #test case 

#6 write code that will loop through any dataframe and create
#a frequency table for every factor column. 
#hint- use summary rather than a for loop 
freqtable <- (x){
  #freqtable loops through a dataframe and creates a frequency table for ever
  #factor column. 
  
}

#7 write code that will loop through any dataframe and 
      


