## Let's do some API related shit ##

## Practice using an API using httr:
library(httr);library (jsonlite)

## Yodlee Agg simplified API: Cobrand auth
# Cobrand Name: private-yslsandbox3
# 
# Cobrand Login name: yslsandbox3
# Cobrand password: 5a49MZZRTmFHNg9R
#
# User name: zaintejani
# Password: EasyPass123
#
# path parameter https://stage.api.yodlee.com/ysl/{cobrandName}/cobrand/v1/login

# https://stage.api.yodlee.com/ysl/private-yslsandbox3/accounts/v1

## Cobrand Login
json1<-POST("https://stage.api.yodlee.com/ysl/private-yslsandbox3/cobrand/v1/login?cobrandName=private-yslsandbox3&cobrandLogin=yslsandbox3&cobrandPassword=5a49MZZRTmFHNg9R")

## User login through portal. Cobrand possible too

## Get token to add providers (FastLink)
json2<-GET("https://stage.api.yodlee.com/ysl/private-yslsandbox3/providers/v1/token",
            add_headers(Authorization="cobSession=06012015_0:7bddca19628749603b67b211cfacedd2b8e0cefbebe42b5b5c486067b36cc6f9febd65ffce6c04fdf559147460f2b93e650b4570dae5a4010a0cdaf2532984de,
                        userSession=06012015_0:6e3c5b8997f6efe91372cb90508bffa7c2977ff673177fafc89364371fb0ca40ca6b69a0eab611b70a4641ad41d0cefd234f5ecb20b8f270b0b322570150c91a"))

## Yodlee API Call: Account data (8 instances)
accounts<-GET("https://stage.api.yodlee.com/ysl/private-yslsandbox3/accounts/v1?cobrandName=private-yslsandbox3", add_headers(Authorization="cobSession=06012015_0:7bddca19628749603b67b211cfacedd2b8e0cefbebe42b5b5c486067b36cc6f9febd65ffce6c04fdf559147460f2b93e650b4570dae5a4010a0cdaf2532984de,
                        userSession=06012015_0:6e3c5b8997f6efe91372cb90508bffa7c2977ff673177fafc89364371fb0ca40ca6b69a0eab611b70a4641ad41d0cefd234f5ecb20b8f270b0b322570150c91a"))

## Yodlee API Call: Transaction data (12 instances)
trans<-GET("https://stage.api.yodlee.com:443/ysl/private-yslsandbox3/transactions/v1?fromDate=2011-01-01&toDate=2015-11-01", add_headers(Authorization="cobSession=06012015_0:7bddca19628749603b67b211cfacedd2b8e0cefbebe42b5b5c486067b36cc6f9febd65ffce6c04fdf559147460f2b93e650b4570dae5a4010a0cdaf2532984de,
                        userSession=06012015_0:6e3c5b8997f6efe91372cb90508bffa7c2977ff673177fafc89364371fb0ca40ca6b69a0eab611b70a4641ad41d0cefd234f5ecb20b8f270b0b322570150c91a"))

## Yodlee API Call: Provider data (500 instances)
provs<-GET("https://stage.api.yodlee.com:443/ysl/private-yslsandbox3/providers/v1",
                add_headers(Authorization="cobSession=06012015_0:7bddca19628749603b67b211cfacedd2b8e0cefbebe42b5b5c486067b36cc6f9febd65ffce6c04fdf559147460f2b93e650b4570dae5a4010a0cdaf2532984de,
                            userSession=06012015_0:6e3c5b8997f6efe91372cb90508bffa7c2977ff673177fafc89364371fb0ca40ca6b69a0eab611b70a4641ad41d0cefd234f5ecb20b8f270b0b322570150c91a"))
