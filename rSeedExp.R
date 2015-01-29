##Random Seed Experiments.
x<-100L
i<-10L
runs=0L
result = list(x=NULL,i=NULL)
while((i>0)&& (x<150) && runs<1000){
    if(i==0){i<-1}
    set.seed(x-i) ## /=Inf,+=Inf,-=53,*=12,
    x <- rpois((x*i),x)[i]
    i <- rpois((x*i),i)[x]
    runs<<-runs+1
    message(c("x:",x," i:",i))
    result$x<-c(result$x,x)
    result$i<-c(result$i,i)
}
    
print(runs)

## Normal distribution version
x<-100L
i<-10L
runs=0L
result = list(x=NULL,i=NULL)
while((i>0)&& (x<150) && runs<1000){
    if(i==0){i<-1}
    set.seed(x+i)
    x <- rnorm((x*i),x,i)[i]
    i <- rnorm((x*i),i+x,x)[x]
    runs<<-runs+1
    message(c("x:",x," i:",i))
    result$x<-c(result$x,x)
    result$i<-c(result$i,i)
}

print(runs)