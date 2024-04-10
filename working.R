library(ggplot2)
setwd("/home/marcus/repos/cpi-singapore")
data <- read.csv("ConsumerPriceIndexCPI2019AsBaseYearQuarterly.csv")
#data for CPI of All Items from 1961 to 2023
genData <- as.data.frame(t(data[1, 2:253]))
genData
i = 252
add <- c()
while (i>0) {
  add <- append(add, i)
  i <- i - 1
}
genData$QuartersAfter <- add
colnames(genData)[1] <- 'AllItems'
genData$AllItems <- as.numeric(genData$AllItems)
p1961 <- ggplot(data = genData, mapping = aes (x=QuartersAfter, y=AllItems)) + geom_line() + labs(title='Scatterplot of CPI of All Items vs Quarters after 1960 (2019 taken as base)', x='Quarters After 1960', y='CPI of All Items') + coord_cartesian(ylim=c(20,120))
print(p1961)

