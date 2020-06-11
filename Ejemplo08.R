rm(list = ls())
getwd()
setwd(dir = "C:/Users/catpo/Desktop/r_data_science/clase02")


library(help="datasets")

class(AirPassengers)
help(ts)
plot(AirPassengers)

class(co2)
help(co2)
plot(co2)
class(co2)

data(cars)
library(car)
data(Prestige)
str(Prestige)
head(Prestige)
tail(Prestige)
  

summary(Prestige)
Prestige[is.na(Prestige$type),]
help("Prestige")

#analisis de correlacion entre todas las variablesnumericas

cor(Prestige[,-6])
library(corrplot)
corrplot(cor(Prestige[,-6]))






