rm(list = ls())
getwd()
dir()

retail<-read.csv(file = "RetailSales.csv.txt")
####alguna informacion del dataframe####
class(retail)
str(retail)
colnames(retail)
View(retail)

####limpieza de datos####
#notamos que existen filas que possen elemento vacios
#asi como elementos na

help("na.omit")
retail<-na.omit(retail)
View(retail)

#na.omit: elimina todas las filas que por lo menos tengan un elemento na

#ver la estructora de los datos
str(retail)

####retail: analisis por año####
#veamos cuanto es lo que produjo de ventas por año
retail
retail[retail$Year==2000,]
class(retail[retail$Year==2000,])
retail[retail$Year==2000,]$Sales
sum(retail[retail$Year==2000,]$Sales)
unique(retail$Year)

#utilcemos una estructura for para crear un dataframe donde almacenaremos un resumen por año
  
resumensales<-data.frame(year=integer(),ventatotal=double())
nuevafila<-data.frame()

for (y in unique(retail$Year)) {
  nuevafila<-data.frame(year=y, ventatotal=sum(retail[retail$Year==y,]$Sales))
  resumensales<-rbind(resumensales,nuevafila)
}

plot(x = resumensales$year,y=resumensales$ventatotal)

####comportamiento de la data por mes####
retail[retail$Month=="Jan",]$Sales
unique(retail$Month)

help("aggregate")

retailmes<-aggregate(Sales ~  Month, data = retail, FUN=sum)
month.abb
month.name

#ordernar el mes

retailmes<-retailmes[order(match(retailmes$Month,month.abb)),]


