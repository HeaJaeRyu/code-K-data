# ADP 
# for 

for (year in c(2015:2018)){
  print(paste("The year is",year))
}

year = 2015 
while (year <= 2018){
  print(paste("The year is",year))
  # 여기까지만 쓰면 무한루프 
  # year += 1 doesn't work
  year = year + 1
}

# using 'break'
i = 0 
repeat{
  i = i +2 
  print(i)
  if(i>=10){
    break
  }
}
i

# using 'next' 
# print odd numbers
for (i in 1:10){
  if(i%%2 == 0){
    next
  }
  print(i)
}
i

# PCR
library(datasets)
data(USArrests)
str(USArrests)
summary(USArrests)
plot(USArrests, main = "USArrests Data")
cor(USArrests)
## pairs
pairs(USArrests, panel = panel.smooth, main = "USArrests Data")

# PCA - princomp 
US.prin = princomp(USArrests, cor = T)
US.prin
plot(US.prin)
screeplot(US.prin)
plot(US.prin, type = 'l')

# PCA - Loading 
US.prin$sdev
# str(US.prin) - 함부로 쓰지 말것. 어려움. 결과 더러움. 
US.prin$loadings
US.prin$center
US.prin$scale
US.prin$n.obs
US.prin$scores # 50 states result per comp. 1- 4 
US.prin$call

# textbook
US.prin$loadings
US.prin$scores

# PCA - Comp.1, 2 
biplot(US.prin, scale = 0) #z.std. 
biplot(US.prin)

# Factor Analysis - FA 
# swiss
data(swiss)
str(swiss)
plot(swiss)
summary(swiss)

# apply - apply (data, calculating direction, applying function)
Min = apply(swiss, 2, min)
Max = apply(swiss,2, max)
# regularization X normalization V
swiss_fa = scale(swiss, center = Min, scale = (Max-Min)) 
swiss_fa
plot(swiss_fa)
summary(swiss_fa)
cor(swiss_fa)
# factanal, varimax 
factanal(swiss_fa, factor = 3)
# factanal_3 = factanal(swiss_fa, factor = 3)
