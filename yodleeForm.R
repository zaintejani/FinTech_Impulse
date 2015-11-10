## R Form post script
url <- "https://yieapnodestage.yodlee.com/authenticate/privateyslsandbox3/"

fd <- list(
  app=10003600,
  rsession="06012015_0:6e3c5b8997f6efe91372cb90508bffa7c2977ff673177fafc89364371fb0ca40ca6b69a0eab611b70a4641ad41d0cefd234f5ecb20b8f270b0b322570150c91a",
  token="1fcb066dbef8096d1b07ad911836c5c55fcdc1af65dfe236d45b91bfec67469b",
  redirectReq=TRUE
)

resp<-POST(url, body=fd, encode="form")
content(resp)