install.packages("dplyr")


help(read.csv)
data1 <- read.csv(file.choose(), header = T)
summary(data1)
head(data1)
help(boxplot)






days <- c('Mon', 'Tues', 'Wed', 'Thru', 'Fri', 'Sat', 'Sun')
temp <- c(28,30.5,32,31.2,29.3,27.9,26.4)
snowed <- c('T','T','F','F','T','T','F')
snowed
help("data.frame")

RPI_Weather <- data.frame(days, temp, snowed)
RPI_Weather
head(RPI_Weather)
#str(RPI_Weather)
summary(RPI_Weather)
RPI_Weather[,2]
RPI_Weather[,'temp']
RPI_Weather$days
RPI_Weather$temp
RPI_Weather$snowed
subset(RPI_Weather, subset = snowed== 'T')
sorted.snowed <- order(RPI_Weather['snowed'])
sorted.snowed
RPI_Weather[sorted.snowed,]

dec.snow <- order(-RPI_Weather$temp)
dec.snow
RPI_Weather[dec.snow,]




#empty.DataFrame 
empty.DataFrame <- data.frame()
letters
v1 <- 1:10
v1
v2 <- letters[1:10]
v2
df <- data.frame(col.name.1 = v1, col.name.2 = v2)
df
write.csv(df, file= 'save_df1.csv')
df2 <- read.csv('save_df1.csv')
df2
