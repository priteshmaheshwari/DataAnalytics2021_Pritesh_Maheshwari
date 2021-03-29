# March 03, 2021
# Tree, Hirerachical Clustering & Heatmaps 
# Group 3, Lab 4


set.seed(12345)
?par
par(mar=rep(0.2,4))
data_matrix <- matrix(rnorm(400), nrow = 40)
image(1:10, 1:40, t(data_matrix)[,nrow(data_matrix):1])

?heatmap
?rep

par(mar = rep(0.2,4))
heatmap(data_matrix)

?rbinom

set.seed(678910) #for same results as class

for (i in 1:40){
  coin_Flip <- rbinom(1, size = 1, prob = 0.5)
  if (coin_Flip){
    data_matrix[i, ]<-data_matrix[i, ] + rep(c(0,3), each =5)
  }
}

par(mar = rep(0.2,4))
image(1:10, 1:40, t(data_matrix)[, nrow(data_matrix):1])
par(mar = rep(0.2,4))
heatmap(data_matrix)

hh <- hclust(dist(data_matrix))
data_matrix_Ordered <- data_matrix[hh$order,]
par(mfrow = c(1,3))
image(t(data_matrix_Ordered)[, nrow(data_matrix_Ordered):1])
plot(rowMeans(data_matrix_Ordered),40:1, xlab = "Row Mean", ylab = "Row", pch = 19)
plot(rowMeans(data_matrix_Ordered), xlab = "Column", ylab = "Column Mean", pch = 19)






