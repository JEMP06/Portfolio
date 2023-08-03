
###########################################################
###########################################################

## Introduction to Exploratory Data Analysis with R

###########################################################
###########################################################


###########################################################
## Task One: Getting Started
## In this task, you will learn set and check your current
## working directory
###########################################################

## 1.1: Set and get the working directory

## setwd("enter your directory address here")

## 1.2: Get the working directory
getwd()

## 1.3: Importing packages needed
library(e1071)
library(ggplot2)
library(graphics)
library(lattice)
require(stats)


###########################################################
## Task Two: Import data set and explore
## In this task, we will import two data sets and explore them
###########################################################

## 2.1: Import the msleep.csv and mpg.csv data sets
df <- read.csv(file = "msleep.csv")

df1 <- read.csv("mpg.csv")

## 2.2: View and check the dimension of the data sets
View(df)

View(df1)

dim(df)

dim(df1)
## 2.3: Take a peek at df using the head and tail functions
head(df)

tail(df)
## 2.4: Check the internal structure of the data frame
str(df)

## 2.5: Count missing values in the variables
sum(is.na(df))

## 2.6: Check the column names for the df data frame
names(df)

## 2.7: Drop the first two columns of df
df <- df[, -c(1,2)]
dim(df)

###########################################################
## Task Three: Plot a categorical Variable
## In this task, we will learn how to plot a categorical variable
###########################################################

## 3.1: Let us check the internal structure the df1 data frame
str(df1)

## 3.2: Assign class from df1 to a new variable called c1
c1 <- df1$class
c1

## 3.3: Get the frequency of the feature "class"
c1_freq <- table(c1)
c1_freq

## 3.4: Plot a categorical variable on a bar chart

## Using the plot function
plot(c1)

## Plotting tabular data 
barplot(c1_freq, beside = T)

## Add legend and colour
barplot(c1_freq, beside = T,
        legend.text = T,
        col = c(2,3))

## Add a title
barplot(c1_freq, main = "Bar Plot of Class of Cars")

## Using the qplot function
qplot(c1, data = df1)

## Add a title and change label names
qplot(c1, data = df1,
      main = "Car Class Distribution",
      xlab = "Class",
      ylab = "Frequency")

## 3.5: Plot a pie chart
pie(c1_freq)

###########################################################
## Task Four: Plotting a Numeric Variable
## In this task, we will plot different plots
## for a quantitative variable
###########################################################

### Plots for univariate variables

## 4.1: Descriptive statistics in R

## Assign a single variable to a new variable
sleeptime <- df$Total.Sleep.Time

summary(sleeptime)
fivenum(sleeptime)
var(sleeptime)
sd(sleeptime)

## 4.2: Stem and Leaf
## Use stem() command
stem(sleeptime)

## 4.3: Histogram
hist(sleeptime)

## Set number of bins to 10
hist(sleeptime, breaks = 10)
hist(sleeptime, 10)

## Using proportions or probabilities
hist(sleeptime, probability = T)

## Add a colour and a title
hist(sleeptime, probability = T,
     col = gray(0.9),
     main = "Histogram of Sleep Time of Mammals")


## Superimpose a normal curve
lines(density(sleeptime), col = "red", lw = 4)

## Using the qplot function
qplot(sleeptime, data = df,
      main = "Histogram for Mammals Sleep Time")

## 4.4: Density plot

## Use the densityplot function
densityplot(sleeptime, lw = 4, col = "red")

## Using the qplot function
qplot(sleeptime, data = df, geom = "density",
      main = "Mammals Sleep Time Distribution",
      xlab = "Mammals Sleep Time",
      ylab = "Density")

## 4.5: Density related plots
qqnorm(sleeptime)
qqline(sleeptime, col = 2, lw = 3)

## 4.6: Box plot
boxplot(sleeptime, main = "Mammals Sleep Time", horizontal = T)
boxplot(df$awake, main = "Mammals Sleep Time", horizontal = T)

## Plotting multiple plots
par(mfrow = c(1,2))
boxplot(sleeptime, main = "Mammals Sleep Time")
boxplot(df$awake, main = "Mammals Sleep Time")

# Notice, both distributions are skewed 

## 4.7: Quick clue on resetting the par
par(mfrow=c(1,1)) 

## or
dev.off()

###########################################################
## Task Five: Plotting a Numerical and Categorical Variable
## In this task, we will continue to learn how to perform EDA in
## R by plotting a numeric and categorical variable
###########################################################

## 5.1: Dot plot
qplot(class, hwy, data = df1,
      main = "Highway miles per gallon for class of cars",
      xlab = "Classof Cars",
      ylab = "Highway miles per gallon")

## 5.2: Box plot
qplot(class, hwy, data = df1, geom = "boxplot",
      main = "Highway miles per gallon for class of cars",
      xlab = "Classof Cars",
      ylab = "Highway miles per gallon")

## 5.3: Colored Density plot
den <- qplot(hwy, fill = class, data = df1, geom = "density", alpha = I(0.8),
      main = "Highway miles per gallon for class of cars",
      xlab = "Classof Cars",
      ylab = "Highway miles per gallon")
den

###########################################################
## Task Six: Plotting two variables
## In this task, we will learn how to plot two categorical or two
## numerical variables in R
###########################################################

### Plotting two categorical variables

## 6.1: Check the frequency of two categorical variables
table(df1$class, df1$drv)

## 6.2: Colored bar plot for two categorical variables
qplot(class, fill = drv, data = df1, geom = "bar",
      main = "Car drive type for different class of cars",
      xlab = "Class",
      ylav = "Frequency")

### Plotting two numerical variables

## 6.3: Scatter plot using the plot function
plot(df1$cty, df1$hwy,
     col = "darkgreen", pch = 5)

## 6.4: Add a title, and give appropriate label names
plot(df1$cty, df1$hwy,
     col = "darkgreen", pch = 5,
     main = "Scatter Plot of City Miles and Highway miles",
     xlab = "City Miles per Gallon",
     ylab = "Highway miles per gallon")

## 6.5: Scatter plot using the qplot function
qplot(cty, hwy, data = df1,
      main = "Scatter Plot of City Miles and Highway miles",
      xlab = "City Miles per Gallon",
      ylab = "Highway miles per gallon")


###########################################################
## Task Seven: Plotting three variables - Wrap up
## In this task, we will learn how to plot three variables and
## how to save a plot in R
###########################################################

## 7.1: Colored Dot plot
qplot(cty, hwy, color = class, data = df1,
      main = "Scatter Plot of City Miles and Highway miles",
      xlab = "City Miles per Gallon",
      ylab = "Highway miles per gallon")

## 7.2: Save last plot as an image
ggsave("ColoredDotPlot.png", width = 9, height = 6)
ggsave("ColoredDotPlot.png", den, width = 9, height = 6)

## 7.3: Save any plot from global environment as an image

