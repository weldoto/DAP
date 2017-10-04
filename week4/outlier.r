#read in the data file
athletes <- read.table('/home/epa/DAP/athletes.txt', header=T, sep=',')

#print 'summary' stats of the athletes' weight
print(summary(athletes$Wt))

#filter the data looking for tennis

tennis <- athletes[athletes$Sport=="tennis",]

tennis men <- tennis[tennis$Sex==0,]
tennis <- athletes[athletes$Sport=="tennis" & athletes$Sex=="0",]
print(summary(tennis))
