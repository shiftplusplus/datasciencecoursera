##Random Seed Experiments.
x<-100L
i<-10L
runs=0L
while((i>0)&& (x<150)){
    if(i==0){i<-1}
    set.seed(x-i) ## /=Inf,+=Inf,-=53,*=12,
    x <- rpois((x*i),x)[i]
    i <- rpois((x*i),i)[x]
    runs<<-runs+1
    message(c("x:",x," i:",i))
}
    
print(runs)