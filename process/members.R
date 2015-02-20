library('rjson')
document1<-fromJSON(file='data/members1.json', method='C')
document2<-fromJSON(file='data/members2.json', method='C')
document3<-fromJSON(file='data/members3.json', method='C')
document4<-fromJSON(file='data/members4.json', method='C')
document5<-fromJSON(file='data/members5.json', method='C')
document6<-fromJSON(file='data/members6.json', method='C')
document7<-fromJSON(file='data/members7.json', method='C')

members<-(c(document1,document2,document3,document4,document5,document6,document7))

nameList <- function(x) { 
name<-x[[1]][[1]][1]
url<-x[[6]][[1]][1]
c(name,url)
 cat(c(name,url),file="data/allmembers.txt",append=TRUE)
 cat("",file="data/allmembers.txt",sep="\n",append=TRUE)
}
file.create("data/allmembers.txt")
names<-lapply(members, nameList)



