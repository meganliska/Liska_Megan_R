#HW 6
#Group C

require(ggplot2) #Require ggplot2 to use this package
require(grid) #Require grid to use the grid package
data("diamonds")#load the diamonds dataframe

#2 (1 was for groups E and F only)
graph1 <- ggplot(diamonds, aes(x=carat, y=price, color=color)) +
  geom_point() + ggtitle("Diamonds- Weight to Price by Color") + 
  xlab("Weight") + ylab("Price") + labs(color="factor(color)")+
  theme(plot.title = element_text(size = rel(1.4),colour="blue"))
print(graph1)
#uses ggplot to plot the diamond set in a scatterplot
#aes selects the carat and price columns as our x and y
#ggtitle adds the title 
#xlab and ylab add labels for axis
#theme(plot.title) lets us make the title the right font, size and color
#---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

#3
#remove the non-linearity and replot
graph2 <- ggplot(diamonds, aes(x=log(carat), y=log(price), color=color)) + 
  geom_point() + ggtitle("Diamonds- Weight to Price(Linear)") + xlab("Weight") + 
  ylab("Price") + labs(color="factor(color)") + 
  theme(plot.title = element_text(size = rel(1.8),colour="blue"))
print(graph2)
#this is the same as 2 except we take the log of carat and price as our
#x and y in order to remove the non-linearity 
#-------------------------------------------------------------------------------------------
#4
linmodel <- lm(log(price) ~ log(carat), data = diamonds)
#linmodel creates a linear model between the logs of price and carat 
residual <- resid(linmodel)
#residual takes the residuals of the linear model 

graph3 <- ggplot(diamonds, aes(x=log(carat), y = (residual), color = color)) +geom_point() + 
  ggtitle("Diamonds- Weight to Price by Color") + xlab("Weight") + ylab("Price") + 
  labs(color="factor(color)")+theme(legend.position = "top") + 
  theme(plot.title = element_text(size = rel(1.6),colour="blue"))
print(graph3)
#plots with log of carat on the x axis and the residuals of price on the y axis
#legend.position moves the legend to the top of the graph so it matches the one in the problem.
#---------------------------------------------------------------------------------------------
#5
#First make the density histograms
#then overlay them using grid package and commands on the graph from the previous problem


mainplot <- ggplot(diamonds, aes(x=log(carat), y = (residual), color = color)) +geom_point() + 
  ggtitle("Diamonds- Weight to Price by Color") + xlab("Weight") + ylab("Price Residuals") + labs(color="factor(color)") + 
  theme(legend.position = "top") +theme(plot.title = element_text(size = rel(1.6),colour="blue"))
#plots graph three as the main graph

pricehist <- ggplot(diamonds, aes(price)) + geom_histogram(aes(y = ..density.., color=factor(color)), binwidth = 50) +
  theme(axis.title.x = element_blank(),axis.title.y = element_blank(),legend.position='none') 
#makes the price histogram without any labels, title or legend

carathist <- ggplot(diamonds, aes(carat)) +geom_histogram(aes(y = ..density..,color = factor(color)), binwidth = .0225) +
  theme(axis.title.x = element_blank(),axis.title.y = element_blank(),legend.position='none') 
#makes the carat histogram without any labels, title or legend

vp1 <- viewport(width = .4, height = .2, x=.265 , y= .15)
vp2 <- viewport(width = .4, height = .2, x =.8, y= .65)
print(mainplot)
print(pricehist, vp = vp1)
#prints the blank histogram in viewport 1 spot
print(carathist, vp = vp2)
#prints the blank histogram in the viewport 2 spot 

