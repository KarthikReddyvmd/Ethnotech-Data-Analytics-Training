data<-c(10,30,70,100,80,5,26,68,63,67,87,43,86,45,21)
print("Dataset:")
print(data)
mean_value <- mean(data)
print(paste("Mean:",mean_value))
median_value <- median(data)
print(paste("Median:",median_value))
mode_function <- function(x){
  uniq_values <- unique(x)
  uniq_values[which.max(tabulate(match(x,uniq_values)))]
}
mode_value <- mode_function(data)
print(paste("Mode:",mode_value))
max_value <- max(data)
print(paste("MAX:",max_value))
min_value <- min(data)
print(paste("MIN:",min_value))
var_value <- var(data)
print(paste("Variance:",var_value))
std_value <- sd(data)
print(paste("STDdev:",std_value))
# Simple line plot
plot(data, type="o", col="black",
     xlab="Index", ylab="Value",
     main="Line Plot of Numbers")
# Student names and scores
students <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David", "Eva"),
  Score = c(85, 92, 76, 88, 95)
)

print(students)
# Bar plot of student scores
barplot(data)
# Pie chart of student scores
pie(data)


