rm(list = ls())
library(readxl)
library(help="readxl")
dir(pattern = "xlsx")

####cargar la data en memoria####

excel_sheets(path = "excel_prueba.xlsx")[1]
excel_iris<- read_excel("excel_prueba.xlsx",sheet = "iris")
excel_women<- read_excel("excel_prueba.xlsx",sheet = excel_sheets(path = "excel_prueba.xlsx")[2],col_names = FALSE)
str(excel_women)
colnames(excel_women)
colnames(excel_women)<-c("col1","col2")


excel_air<-read_excel(path = "excel_prueba.xlsx",sheet = "airquality",skip = 3)

colnames(excel_air)
excel_air$Observaciones

sum(excel_air$Observaciones,na.rm = TRUE)#nos dice que hay 0 elemetno no na
sum(excel_air$Fechas,na.rm = TRUE)#nos dice que hay 0 elemetno no na


excel_air<-read_excel(path = "excel_prueba.xlsx",sheet = "airquality",skip = 3,na = "-")
excel_air<-excel_air[,-c(1,6,11)]
excel_air<-na.omit(excel_air)








