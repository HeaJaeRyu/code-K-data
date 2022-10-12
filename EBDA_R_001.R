# Engineer Big Data Analysis 001 
# Reference: ISBN 979-11-5767-622-4 13000

rm(list=ls())

# user define function 
## e.g. abs() function
func_abs = function(x){
  if(x < 0){
    return (-x)
  }
  else{
    return(x)
  }
}

func_abs(6.5)
func_abs(-6.5)

## e.g. func_diff
func_diff = function(x,y){
  print("x: ",x)
  print("y: ", y)
  print("x-y :", x-y)
}
val = func_diff(9,1)
val 

func_diff = function(x,y){
  print(x)
  print(y)
  print(x-y)
}
val = func_diff(9,1)
val 


## e.g. [DIY] Gaussian function or floor function or greatest integer function
floor(3.5)
floor(-3.5)

func_gaussian = function(x){
  if(x >0){
    return(round(x)-1)
  }
  else{
    return(round(x))
  }
}
func_gaussian(3.5)
func_gaussian(-3.5)

ceiling(5.6)

##################

# visualization 
library(graphics)

# colors()[1:25] total 637 colors
colors()[1:25]

plot(1:25, col= colors()[1:25])
plot(56:80, col = colors()[56:80])
plot(1:637, col= colors()[1:637])
plot(1:300, col= colors()[1:300])
plot(301:637, col= colors()[301:637])




# plot function 
a = c(3,5,4)
plot(a)

b = c
plot(a,type = 'l')

# plot x-axis
length = iris$Petal.Length
plot(length, col = c("red", "blue", "green")) # not meaningful data 
plot(length, col = c("red", "blue", "green")[unclass(iris$Species)])
plot(length, col = c("red", "blue", "green")[iris$Species])

plot(x = iris$Petal.Length, y =iris$Petal.Width, main = "Iris Petal")

plot(x = iris$Petal.Length, 
     y =iris$Petal.Width, 
     main = "Iris Petal", 
     col = c("red", "blue", "green")[iris$Species])

plot(x = iris$Petal.Length, 
     y =iris$Petal.Width, 
     main = "Iris Petal", 
     col = iris$Species)

plot(x = iris$Sepal.Length, 
     y =iris$Sepal.Width, 
     main = "Iris Sepal", 
     col = iris$Species)

plot(x = iris$Petal.Length, 
     y =iris$Petal.Width,
     xlab = "Petal Length",
     ylab = "Petal Width",
     main = "Iris Petal", 
     col = iris$Species)

# histogram 
hist(x = iris$Petal.Length, xlab = "Petal Lentgh", main= "Distribution of Iris Petal Length")

# relative histogram
hist(x  = iris$Petal.Length,
     xlab = "Petal Length", 
     breaks = 4, 
     freq = FALSE,
     main = "Distribution of Iris Petal Length with 4 Breaks")

# barplot 
# set.seed(20221012)
# h= sort(sample.int(100, 4))
h= sample.int(100, 4)
h
name = c("1Q", "2Q", "3Q", "4Q")
barplot(h, names.arg = name)


# pie chart 
p = sort(sample.int(100,4))
pie(x=p, labels = name)

pie(x = p,
    labels = name,
    density = 10,
    angle = 30 *1:4)

pie(x = p,
    labels = name,
    density = 5,
    angle = 120 *1:4)

pie(x = p,
    labels = name,
    density = 10,
    angle = 270 *1:4)

# boxplot 
boxplot(x= iris$Sepal.Length, main = "Dstn of Iris Sepal Length")

# [DIY] rotated boxplot 
boxplot(x= iris$Sepal.Length, main = "Dstn of Iris Sepal Length", horizontal = T)
