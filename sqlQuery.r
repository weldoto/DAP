library(RSQLite)

conSQLite <- dbConnect(RSQLite::SQLite(), dbname="athletes.sqlite")

resultsHandle <-dbSendQuery(conSQLite,"select Ht from athletes_table;")
getMeanHt2 <- function(rows, qhandle) {
g <- fetch(resultsHandle, n=rows)

mean(g$Ht)

}


getMeanHt <- function(rows){
g <- fetch(resultsHandle, n=rows)

mean(g$Ht)


}

#rep(20,10)
#chunk size = 20, number of chunks = 10
print(mean(sapply(rep(20,10), FUN=function(num){


})))
