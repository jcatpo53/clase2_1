####cargar datos en memoria####
dir()
gluc<-read.table(file = "glucosa.txt",header = TRUE)
class(gluc)
str(gluc)
colnames(gluc)[2:3]
class(colnames(gluc))
gluc$glucosa
mean(gluc$glucosa)
median(gluc$glucosa)
sd(gluc$glucosa)
var(gluc$glucosa)
quantile(gluc$glucosa,probs = 0.1)
quantile(gluc$glucosa,probs = 0.5)
quantile(gluc$glucosa,probs = c(0.1,0.9))

#
plot(x = 1:31,y=gluc$temperatura)
plot(x = 1:31,y=gluc$temperatura,main="dataset glucosa txt",xlab = "indices",ylab = "temperatura",type = "l")
plot(x = 1:31,y=gluc$temperatura,main="dataset glucosa txt",xlab = "indices",ylab = "temperatura",type = "b")
plot(x = 1:31,y=gluc$temperatura,main="dataset glucosa txt",xlab = "indices",ylab = "temperatura",type = "s")


#text()
#lines()
#hist()
#barplot()
#pie()
