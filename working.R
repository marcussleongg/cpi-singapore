library(ggplot2)
setwd("/home/marcus/repos/cpi-singapore")
data <- read.csv("ConsumerPriceIndexCPI2019AsBaseYearQuarterly.csv")
genData <- as.data.frame(t(data[1, 2:17]))
genData
i = 16
add <- c()
while (i>0) {
  add <- append(add, i)
  i <- i - 1
}
genData$QuartersAfter <- add
colnames(genData)[1] <- 'AllItems'
genData
p <- ggplot(data = genData, mapping = aes (x=QuartersAfter, y=AllItems)) + geom_point() + geom_smooth(fill=NA)
print(p)
