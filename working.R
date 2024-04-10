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

#data for CPI from 2014 to 2023
data2014 <- as.data.frame(t(data[c(1,3,67,84,103,113,130), 2:41]))
data2014
i = 40
add2014 <- c()
while (i>0) {
  add2014 <- append(add2014, i)
  i <- i - 1
}
add2014
data2014$QuartersAfter <- add2014
colnames(data2014)[1] <- 'AllItems'
data2014$AllItems <- as.numeric(data2014$AllItems)
colnames(data2014)[2] <- 'FoodExclServices'
data2014$FoodExclServices <- as.numeric(data2014$FoodExclServices)
colnames(data2014)[3] <- 'HousingUtilities'
data2014$HousingUtilities <- as.numeric(data2014$HousingUtilities)
colnames(data2014)[4] <- 'Healthcare'
data2014$Healthcare <- as.numeric(data2014$Healthcare)
colnames(data2014)[5] <- 'PublicTransport'
data2014$PublicTransport <- as.numeric(data2014$PublicTransport)
colnames(data2014)[6] <- 'TelcoServices'
data2014$TelcoServices <- as.numeric(data2014$TelcoServices)
colnames(data2014)[7] <- 'Education'
data2014$Education <- as.numeric(data2014$Education)
data2014
p2014 <- ggplot(data = data2014, mapping = aes (x=QuartersAfter)) +
        geom_line(aes(y=AllItems, color='All Items')) +
        geom_line(aes(y=FoodExclServices, color='Food Excl Food Serving Services')) +
        geom_line(aes(y=HousingUtilities, color='Housing & Utilities')) +
        geom_line(aes(y=Healthcare, color='Healthcare')) +
        geom_line(aes(y=PublicTransport, color='Public Transport')) +
        geom_line(aes(y=TelcoServices, color='Telco Services')) +
        geom_line(aes(y=Education, color='Education')) +
        scale_color_manual(values=c("black", "red", "blue", "pink", "green", "yellow", "purple")) +
        labs(title='Plots of CPI vs Quarters after 2013 (2019 taken as base)', x='Quarters After 2013', y='CPI') + coord_cartesian(ylim=c(90,120))
print(p2014)

#data for CPI from 2019 to 2023
data2019 <- NULL
data2019 <- data2014[1:20, 1:7]
data2019
i = 20
add2019 <- c()
while (i>0) {
  add2019 <- append(add2019, i)
  i <- i - 1
}
data2019$QuartersAfter <- add2019
data2019
p2019 <- ggplot(data = data2019, mapping = aes (x=QuartersAfter)) +
  geom_line(aes(y=AllItems, color='All Items')) +
  geom_line(aes(y=FoodExclServices, color='Food Excl Food Serving Services')) +
  geom_line(aes(y=HousingUtilities, color='Housing & Utilities')) +
  geom_line(aes(y=Healthcare, color='Healthcare')) +
  geom_line(aes(y=PublicTransport, color='Public Transport')) +
  geom_line(aes(y=TelcoServices, color='Telco Services')) +
  geom_line(aes(y=Education, color='Education')) +
  scale_color_manual(values=c("black", "red", "blue", "pink", "green", "yellow", "purple")) +
  labs(title='Plots of CPI vs Quarters after 2019 (2019 taken as base)', x='Quarters After 2019', y='CPI') + coord_cartesian(ylim=c(97,117))
print(p2019)
