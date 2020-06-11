####data frame en r####
#definicion
nota1<-runif(10,1,19)
nota2<-sample(1:20,10)
miprimerdf<-data.frame(notap=nota1,notaf=nota2)
class(miprimerdf)
dim(miprimerdf)
str(miprimerdf)
View(miprimerdf)

####acceso a la informacion####
miprimerdf$notap
miprimerdf[[1]]
miprimerdf[,1]
#desean ingresar algun parametro por teclado
help("readline")
