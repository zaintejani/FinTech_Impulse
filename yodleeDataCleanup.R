## Mining Yodlee list data to dataframe

## Transactions

t1<-content(trans)

Container<-character();ID<-numeric();Amount<-numeric();Date<-character();accountID<-numeric()

for (i in 1:length(t1[[1]])){
  Container<-c(Container, t1[[1]][i][[1]]$CONTAINER)
  ID<-c(ID,t1[[1]][i][[1]]$id)
  Amount<-c(Amount, t1[[1]][i][[1]]$amount$amount)
  Date<-c(Date, t1[[1]][i][[1]]$date$date)
  accountID<-c(accountID, t1[[1]][i][[1]]$accountId)
  
  i<-i+1
}

transDF<-as.data.frame(cbind(ID,Amount,Date,accountID,Container))

## Provider dataset

p1<-content(provs)

ID<-numeric();Provider.Name<-character();Container.String<-character();Priority<-character()

for (i in 1:length(p1[[1]])){
  ID<-c(ID,p1[[1]][i][[1]]$id)
  Provider.Name<-c(Provider.Name,p1[[1]][i][[1]]$name)
  Priority<-c(Priority,p1[[1]][i][[1]]$PRIORITY)
  
  ## CONTAINER CODE NESTED LOOP BELOW
  
  c2<-character()
  
  for (j in 1:length(p1[[1]][i][[1]]$containerNames)){
    c1<-p1[[1]][i][[1]]$containerNames[[j]]
    c2<-paste(c2,c1,sep=" ")
    
    j<-j+1
  }
  Container.String<-c(Container.String,c2)
  
  i<-i+1
}

provDF<-as.data.frame(cbind(ID,Provider.Name,Container.String,Priority))

## Accounts

a1<-content(accounts)

ID<-numeric();Account.Container<-character();Account.Balance<-numeric();Provider.Name<-character()

for (i in 1:length(a1[[1]])){
  ID<-c(ID, a1[[1]][i][[1]]$id)
  Account.Container<-c(Account.Container,a1[[1]][i][[1]]$CONTAINER)
  Account.Balance<-c(Account.Balance, a1[[1]][i][[1]]$balance)
  
  i<-i+1
}

accountDF<-as.data.frame(cbind(ID,Account.Container,Account.Balance))


## p1[[1]][i][[1]]$CONTAINER
