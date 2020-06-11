####estructura de decision if####

x<-runif(1,0,10)
if(x>5){
  y<-TRUE
}else{
  y<-FALSE
}

#en general 
#if(cond1){
  #bloque de codigo
#}else if(codi2){
  #bloque de codigo
  
#}else{
  #otro bloque de codigo
#}

####estructura de repeticion: for ####
for(i in 1:5){
  print(i)
}
#en general
#for(variable in objetoiterable){
  #algo de codigo de depende de variable
#}


####paquetes/librerias en r####
sessionInfo()


#para cargar el paquete extradist

library(extraDistr)
help("extraDistr")


####definicion  de fucnioens de usuarios en r####
#sintaxis

#nombredelafucion<-funcion(ar1,arg2,....){
#  #alguna funcionalidad
#}





