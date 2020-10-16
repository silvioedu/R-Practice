# Lookup the runif() function. Create a 3x4 matrix with 12 random numbers 
# generated using the runif() function; have the matrix be filled our #
# row-by-row, instead of column-by-column.
# Name the columns of the matrix uno, dos, tres, cuatro, and the rows x, y, z.

my_matrix <- matrix(runif(12), byrow = T, nrow = 3, ncol = 4, 
                    dimnames = list(c("x", "y", "z"),
                                    c("uno", "dos", "tres", "cuatro")))
my_matrix
# Scale the matrix by 10 and save the result.
my_matrix <- my_matrix * 10
my_matrix

# Extract a 2x4 matrix from it and save the result.
matrix_1  <- my_matrix[1:2, ]
matrix_1

# Subtract the smaller matrix from the larger one. Can you do that? Why?
my_matrix - matrix_1
  
# Extract a 3x3 matrix from the original matrix and save the result. Try the 
# subtraction again. Can you do that? Why?
matrix_1  <- my_matrix[1:3,1:3]
matrix_1

# Extract the column called "uno" as a vector from the original matrix and save 
# the result. Try the subtraction again. Can you do that? Why?
matrix_1[, "uno"]

# Lookup the rnorm() function. Create a new 3x4 matrix with 12 random values 
# generated using the rnorm() function.
matrix_norm <- rnorm(12)
matrix_norm

# Perform matrix multiplication (using the * sign). Can you do that? How is the 
# operation carried out?
matrix_norm * 2
  
# Perform inner matrix multiplication with the two matrixes. Can you do that? 
# Why? Can you think of something to do to make this possible?
matrix_1 * t(matrix_1)