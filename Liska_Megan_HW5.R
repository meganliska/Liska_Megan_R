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
  #Parameters
  #x - a dataframe
  
  #Returns
  #methods and attributes 
  
  print(attributes(x))#gives the attributes of the dataset
  print(methods(class = x)) #methods will print
  #we set the class as data frame to 
 
  
  print(ncol(x)) #gives the number of columns
}


methodcol("diamonds") #test case with the diamonds dataframe
#-------------------------------------------------------------
#2- write code to determine how many rows are in a dataframe
rownumber <- function(x){
  #rownumber takes a dataframe and determines how many rows it has
  #Parameters
  #x - a dataframe
  
  #Returns
  #Frequency table 
  
  print(nrow(x)) #nrow gives the number of rows 
  
}

rownumber(diamonds) #test case 
#-------------------------------------------------------------
#3- write code to extract the column names from a dataframe and print 
#the names of the columns (one per line) to the console
columnnumber <- (x){
  #columnnumber takes a dataframe, extracts the column names and prints 
  #them to the console one per line
  #Parameters
  #x - a dataframe
  
  #Returns
  #Frequency table 
  
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
  #Parameters
  #x - a dataframe
  
  #Returns
  #Frequency table 
  sapply(diamonds, class)#class of the columns 
  
}

columnclass(diamonds) #test case
#----------------------------------------------------------------
#5 we want to use the function lapply 
columnmean <- function(x){
  #columnmean takes a dataframe as its input, calculates the mean of the
  #numeric columns and labels the output with the mean of the column
  #Parameters
  #x - a dataframe
  
  #Returns
  #Frequency table 
  
  numeric <- sapply(x,is.numeric) #sapply applies is.numeric to each column
  #in the dataframe
  print(sapply(x[,numeric], mean)) #sapply then applies mean to the numeric
  #columns of the dataframe and prints them 
}
columnmean(diamonds) #test case

#---------------------------------------------------------------

#6 write code that will loop through any dataframe and create
#a frequency table for every factor column. 
#hint- use summary rather than a for loop 
freqtable <- (x){
  #freqtable loops through a dataframe and creates a frequency table for ever
  #factor column. 
  #Parameters
  #x - a dataframe
  
  #Returns
  #Frequency table 
  factorcols <- x[sapply(x, is.factor)]
  print(summary(factorcols))
}
freqtable(diamonds) #test case 
#----------------------------------------------------------------

#7
findNA <- function(x){
  #findNA loops through any dataframe and prints the number of columns
  #containing NAs and the percentage of rows with NAs
  
  #Parameters
  # x - a dataframe
  
  #Returns
  
  countNA <- nrow(x) - nrow(na.omit(x)) #creates a variable which is the 
  #number of rows minus the number of rows without NA (na.omit finds these)
  
  print(countNA)
  
  paste(100*(countNA/nrow(x)), "%") #finds the percentage of rows
  #paste helps concatinate 
  
}
#--------------------------------------------------------------
#8 
corCoef <- function(x){
  #corCoef takes any dataframe as a parameter and returns a dataframe that 
  #contains each pair of column names in the first column as a single string
  #seperated by a "-" and their corresponding Pearson correlation coefficient
  #in the second column.
  
  #Parameters:
  #x - a dataframe
  
  #Returns:
  #dataframe
  a <- x[sapply(x, is.numeric)] #creates a variable that only has the numeric 
  #columns
  
  #we will use an if-else statement for this problem
  #we need at least 2 columns to find the Pearson correlation
  if(ncol(a) >= 2) {
     b <- combn(colnames(a), 2)
     
     pairs <- paste(b[1,], b[2, ], sep = "-")
     c <- cor(a, method = "pearson")
     
     correlation <- c[which(lower.tri(c))]
     
     newdf <- data.frame(pairs, correlation)
     return(newdf)
     
  }
  else 
    print("Pearson Correlation cannot be computted because there are not enough numeric columns")
}

      


