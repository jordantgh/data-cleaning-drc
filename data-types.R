# Basic Data Types in R

# Numeric: Represents real numbers
a <- 10.5
b <- 3
print("Numeric examples:")
print(a)
print(b)

# Arithmetic operations:
sum <- a + b
delta <- a - b
product <- a * b
ratio <- a / b
modulus <- a %% b # aka remainder of a/b
power <- a ^ b

# other useful maths operations:

exp_a <- exp(a)
ln_a <- log(a) # default base is 'e'
logb_a <- log(a, base = b)
log2_a <- log2(a)
log10_a <- log10(a)
sqrt_a <- sqrt(a)

abs_a <- abs(-a) # absolute value; is equal to 'a'

# Logical: Boolean values (TRUE or FALSE)
is_active <- TRUE
has_passed <- FALSE
print("Logical examples:")
print(is_active)
print(has_passed)


# Character: Text or string data
name <- "John Doe"
greeting <- "Hello, world!"
print("Character examples:")
print(name)
print(greeting)


# ======================================================== #

# Vectors
# Create a numeric vector
numeric_vector <- c(10, 20, 30, 40, 50)
print("Numeric Vector:")
print(numeric_vector)


# Create a character vector
character_vector <- c("apple", "banana", "cherry", "date", "elderberry")
print("Character Vector:")
print(character_vector)


# Operations on vectors
print("Sum of Numeric Vector:")
print(sum(numeric_vector))


# Subsetting vectors
print("Second element of Character Vector:")
print(character_vector[2])


print("First three elements of Numeric Vector:")
print(numeric_vector[1:3])


print("First and fourth elements of Numeric Vector:")
print(numeric_vector[c(1, 4)])


print("First and last two elements of Character Vector:")
print(character_vector[c(1:2, 4:5)])


print("Elements of Numeric Vector greater than 3:")
print(numeric_vector[numeric_vector > 3])
# the expression 'numeric_vector > 3' returns a vector of logical values
# [1] FALSE FALSE FALSE  TRUE  TRUE


print("Elements of Character Vector that are not 'banana':")
print(character_vector[character_vector != "banana"])


print("Reverse Sorted Numeric Vector:")
print(sort(numeric_vector, decreasing = TRUE))
# or using `order` function
print(numeric_vector[order(numeric_vector, decreasing = TRUE)])


# Demonstrating Type Coercion
print("Type Coercion Example:")
mixed_vector <- c(1, "apple", TRUE)
print(mixed_vector)
# Note: Everything in 'mixed_vector' is coerced to character because it's the
# most general type that can represent all values.

# Computations on vectors

length_v <- length(numeric_vector)
max_v <- max(numeric_vector)
min_v <- min(numeric_vector)
median_v <- median(numeric_vector)

sum_v <- sum(numeric_vector) # wont work on character vectors
mean_v <- mean(numeric_vector) # wont work on character vectors

# Data Frames
# Create a data frame
df <- data.frame(
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35),
  Gender = c("Female", "Male", "Male")
)
print("Data Frame:")
print(df)


# Subsetting data frames

print("Subsetting with numeric indices:")
print(df[1, 2]) # 1st row, 2nd column

print("Age column from Data Frame:")
print(df$Age)


# Add a new column
df$Height <- c(162, 175, 168)
print("Data Frame with new 'Height' column:")
print(df)


# Factors
# Create a factor
gender_factor <- factor(c("Male", "Female", "Female", "Male"))
print("Factor (Gender):")
print(gender_factor)


# Factor levels
print("Levels of Gender Factor:")
print(levels(gender_factor))


# Changing the order of factor levels
gender_factor <- factor(gender_factor, levels = c("Female", "Male"))
print("Reordered Gender Factor:")
print(gender_factor)

# There are also lists, matrices, and others - less important.


# ======================================================== #




# Getting help

# Help for a function
?sum

?factor
