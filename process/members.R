document1<-fromJSON(file='membersp1.json', method='C')
document2<-fromJSON(file='membersp2.json', method='C')
document3<-fromJSON(file='membersp3.json', method='C')
document4<-fromJSON(file='membersp4.json', method='C')
document5<-fromJSON(file='membersp5.json', method='C')
document6<-fromJSON(file='membersp6.json', method='C')
document7<-fromJSON(file='membersp7.json', method='C')

members<-(c(document1,document2,document3,document4,document5,document6,document7))

writeLines(unlist(members),"allmembers.txt")

nameList <- function(x) { 
name<-x[[1]][[1]][1]
url<-x[[6]][[1]][1]
c(name,url)
 cat(c(name,url),file="outfile.txt",sep="|",append=TRUE)
 cat("",file="outfile.txt",sep="\n",append=TRUE)
}
file.create("outfile.txt")
names<-lapply(members, nameList)

writeLines(unlist(names),"allnames.txt")
