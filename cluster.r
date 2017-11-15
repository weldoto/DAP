library(parallel)
test <-function(i){
sqrt(i)
}

clu <-makeCluster(type="PSOCK",4)
print (mean(parSapply(clu, c(100,200,200,400), test)))



stopCluster(clu)
