library(httr)
library(XML)

data1 <- GET('https://s.1688.com/selloffer/offer_search.htm?keywords=%B6%BA%D8%88%B0%F4&n=y&spm=a260k.635.1998096057.d1
')
rawdata1 <- data1$content