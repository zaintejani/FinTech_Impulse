## BackEnd Demo: Create spending profiles, ID "best" containers, link provs

# Identify different accounts present
aID<-levels(transDF$accountID)

# Pull up transaction tables, by account: First account ID shown. In statement below, replace aID[1] with =="" input for custom ID
u1<-transDF[transDF$accountID==aID[1],]

# FreqOrder tokens (irrelevant for now, as 100% matching only); find relevant provs
transCont<-as.data.frame(table(as.character(u1$Container)))

## Providers. Not ordered, as dummy data limited in insight potential.

cProv<-provDF[grep(transCont[[1]],provDF$Container.String),]

write.csv(head(cProv),file="./subProv.csv")

## Multi-tag matching ordering for full-data
## Prioritize multi-tagged providers first, as higher likelihood for customized match
## use stylo::txt.to.words() to un-paste string into separate tags, match with head() of FreqOrdered tokens for transactions

## Sample output: tokens available
