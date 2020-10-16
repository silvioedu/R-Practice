# Create a 5x5 matrix with the rnorm() function, and a 5x5 matrix with runif(). 
# Create each in a single line of code (Hint: nest the operations)
mtx_rnorm <- matrix(rnorm(25), nrow = 5, ncol = 5, byrow = T)
mtx_runif <- matrix(runif(25), nrow = 5, ncol = 5, byrow = T)

mtx_rnorm
mtx_runif
# For the two matrices, get the following information; for the first four, save the new values as columns in their corresponding matrixes:
  
#Column averages
colMeans(mtx_rnorm)
colMeans(mtx_runif)

#Row averages
rowMeans(mtx_rnorm)
rowMeans(mtx_runif)

#Column sums
colSums(mtx_rnorm)
colSums(mtx_runif)

#Row sums
rowSums(mtx_rnorm)
rowSums(mtx_runif)

#Minimum and maximum value in the matrix
min(mtx_rnorm)
max(mtx_rnorm)

min(mtx_runif)
max(mtx_runif)

#Minimum and maximum value for the 3rd column in each matrix
min(mtx_rnorm[,3])
max(mtx_rnorm[,3])

min(mtx_runif[,3])
max(mtx_runif[,3])

#The means and standard deviations for each matrix (compare the two values; 
# if interested in the mathematics side of things, recreate the matrices a 
# couple of times, and compare the results; can you explain what is happening?)
mean(mtx_rnorm)
sd(mtx_rnorm)

mean(mtx_runif)
sd(mtx_runif)
