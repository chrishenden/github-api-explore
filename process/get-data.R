library('rjson', 'RCurl')

options(RCurlOptions = list(verbose = TRUE, followlocation = TRUE, timeout = 100, useragent = "chrishenden"))
d1<-getURL('https://api.github.com/orgs/BBC-Data/members?page=1', verbose=TRUE)
membs <- fromJSON(json_str=d1, method="C")