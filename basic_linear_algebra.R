# assigning variables 
x = 3
y = 16

# displaying the variables
x
y

# basic operations of variables
z = x + y
w = y/x
j = w^2

#displaying the results of the operations
z
w
j

# assigning a vector
vector1 <- c(1,2,3,4)
vector1
assign("vector2", c(5,6,7,8))
vector2

# basic vector operations
1/vector2  #division operation on vector components
length(vector2) # displaying the number of elements in a vector array

# assigning a matrix 
matric1 = matrix(c(1,2,3,4), nrow = 2, ncol = 2, byrow = TRUE)
matric1
matric2 <- matrix(c(5,6,7,8), nrow = 2, byrow = TRUE)
matric2

# and arrays
array1 = array(1:20, dim = c(4,5))
array1

# combining vectors to a matrix
combined_vect = cbind(vector1, vector2)
combined_vect

#basic operations of a matrix
inverse_matric1 <- matric1^{-1}
inverse_matric1
multiple_of_mat1_and_2 = matric1 %*% matric2
multiple_of_mat1_and_2
matric1
matric2

# factors in R: 
state <- c("tas", "sa",  "qld", "nsw", "nsw", "nt",  "wa",  "wa",
           "qld", "vic", "nsw", "vic", "qld", "qld", "sa",  "tas",
           "sa",  "nt",  "wa",  "vic", "qld", "nsw", "nsw", "wa",
           "sa",  "act", "nsw", "vic", "vic", "act")
length(state)
typeof(state)
stateof <- factor(state)
stateof
levels(stateof)
# sample examples
incomes <- c(60, 49, 40, 61, 64, 60, 59, 54, 62, 69, 70, 42, 56,
             61, 61, 61, 58, 51, 48, 65, 49, 49, 41, 48, 52, 46,
             59, 46, 58, 43)
typeof(incomes)
length(incomes)
income_means <- tapply(incomes, stateof, mean)
income_means
