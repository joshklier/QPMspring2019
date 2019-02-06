men <- c(56,60,50,26,45,35,41,43,34,42,37,39,33,28,52,48,27,20,44,32)
women <- c(47,49,20,46,43,44,45,60,57,28,55,27,25,50,52,48,23,42,33,59)
cells <- c(women, men)
column_names <- c("women", "men")
table <- matrix(cells, nrow=20, ncol=2, byrow=FALSE)
colnames(table) = column_names
table
summary(table)
boxplot(table, main="Age of Men and Women Boxplots", ylab="years")