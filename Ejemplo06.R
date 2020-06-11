####archivo cloud .txt####
dir()
cloud <- read.table(file="cloud.txt",header = TRUE)
colnames(cloud)
str(cloud)
class(cloud)
cloud$Ispc
cloud$Cloudpt

####histograma####
help("hist")
hist(cloud$Cloudpt)
h_cloudpt<-hist(cloud$Cloudpt)

h_cloudpt$breaks
h_cloudpt$counts

range(cloud$Cloudpt)

b1<-20:34
help(seq)
b2<-seq(20,34,1)

hist(cloud$Cloudpt,breaks = b1)


####boxplot####
help("boxplot")
boxplot(cloud$Cloudpt)

bp_cloudpt<-boxplot(cloud$Cloudpt)



