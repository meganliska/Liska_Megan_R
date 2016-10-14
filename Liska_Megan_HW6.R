#HW 6
#Group C

require(ggplot2) #Require ggplot2 to use this package
require(grid) #Require grid to use the grid package
data("diamonds")#load the diamonds dataframe

#2 (1 was for groups E and F only)
ggplot(diamonds, aes(x=carat, y=price, color=color)) + geom_point() + ggtitle("Diamonds- Weight to Price by Color") + xlab("Weight") + ylab("Price") + labs(color="factor(color)")

#uses ggplot to plot the diamond set in a scatterplot
#aes selects the carat and price columns as our x and y
#ggtitle adds the title xlab and ylab add labels for axis
#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#3
#remove the non-linearity and replot
ggplot(diamonds, aes(x=log(carat), y=log(price), color=color)) + geom_point() + ggtitle("Diamonds- Weight to Price by Color") + xlab("Weight") + ylab("Price") + labs(color="factor(color)")

#-----------------------------------------------------------------------
#4
linmodel <- lm(log(price) ~ log(carat), data = diamonds)
residual <- resid(linmodel)
ggplot(diamonds, aes(x=log(carat), y = (residual), color = color)) +geom_point() + ggtitle("Diamonds- Weight to Price by Color(Linear)") + xlab("Weight") + ylab("Price") + labs(color="factor(color)")

#-----------------------------------------------------------------------
#5
#y=..density 
