rm(list = ls(all = TRUE))
library(png)
library(animation)

rawData = read.csv('NTUStu.csv',header = FALSE)
#allLine = length(rawData[,1])
#rawData = rawData[-allLine,]
names(rawData) <- c("年度","總計","文學院","理學院","社會科學院","醫學院","工學院","農學院","管理學院","公衛學院","電資學院","法律學院","生命科學院","夜間部","進修學院")

yearid=rawData[,1]



ani.options("convert")
saveGIF(
  for (yid in c(1:length(rawData[,1])))
  {
    barplot(as.matrix(rawData[yid,c(-1,-2)]),
            main = paste0("NTU Student Number total is ",rawData[yid,2]," in ",rawData[yid,1]," year"))
  },
  movie.name = "test.gif",
  interval = 0.3,
  ani.width = 1500,
  ani.heigth = 600
)


