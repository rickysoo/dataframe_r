## ----setup, include=FALSE----------------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)


## ----------------------------------------------------------------------------------
members <- data.frame(
  Name = c('Ricky', 'Fatimah', 'Kumanan', 'Jamaine'), # Character vector
  Height = c(170, 172, 180, 168), # Numeric vector
  Birthday = as.Date(c('1990-01-01', '1991-02-02', '1993-03-03', '1994-04-04')) # Date vector
)

print(members)


## ----------------------------------------------------------------------------------
list_numbers <- list('Column 1' = 1:4, 'Column 2' = 5:8, 'Column 3' = 9:12)
df_numbers <- as.data.frame(list_numbers)
df_numbers


## ----------------------------------------------------------------------------------
matrix_numbers <- matrix(1:12, nrow = 4, ncol = 3)
df_numbers <- as.data.frame(matrix_numbers)
colnames(df_numbers) <- c('Column 1', 'Column 2', 'Column 3') # Assign column names
df_numbers


## ----------------------------------------------------------------------------------
# Import from a CSV file on local computer
audiobooks <- read.csv('audiobooks.csv')

# Import the same CSV file from the web
audiobooks <- read.csv('https://raw.githubusercontent.com/rickysoo/top_audiobooks/main/TopAudiobooks-20201107-122322.csv')

head(audiobooks) # Show first 6 rows


## ----------------------------------------------------------------------------------
# Data frame is a special case of list
typeof(members)

# The class is data.frame
class(members)

# Check if "members" is a data frame
is.data.frame(members)

# Number of columns
ncol(members)

# Column names
names(members)

# Number of rows
nrow(members)

# Row names
row.names(members)

# The dimension
dim(members)

# The row and column names
dimnames(members)

# Internal structure of the data frame
str(members)


## ----------------------------------------------------------------------------------
print(members) # Print the whole data frame

## ----------------------------------------------------------------------------------
View(members) # View the data frame in data viewer in RStudio


## ----------------------------------------------------------------------------------
head(audiobooks, n = 3) # Show the first 3 rows of the data frame. The default is 6 rows.


## ----------------------------------------------------------------------------------
tail(audiobooks, n = 3) # Show the last 3 rows of the data frame. The default is 6 rows.


## ----------------------------------------------------------------------------------
library(dplyr)

sample_n(audiobooks, size = 3) # Sample 3 rows randomly from the dataframe

sample_frac(audiobooks, size = 0.05) ## Sample 5% of the rows randomly from the dataframe


## ----------------------------------------------------------------------------------
summary(members)


## ----------------------------------------------------------------------------------
data <- members[1, 1] # Row 1, column 1
print(data)


## ----------------------------------------------------------------------------------
data <- members[[1]][1] # Row 1, column 1
print(data)


## ----------------------------------------------------------------------------------
data <- members[['Name']][1] # Row 1, column 1
print(data)


## ----------------------------------------------------------------------------------
data <- members[1:2, 1:2] # Rows 1 and 2, columns 1 and 2
print(data)


## ----------------------------------------------------------------------------------
data <- members[1:2, c('Name', 'Height')] # Rows 1 and 2, columns "Name" and "Height"
print(data)


## ----------------------------------------------------------------------------------
data <- members[1, ] # Row 1
print(data)


## ----------------------------------------------------------------------------------
data <- members[1:2, ] # Rows 1 and 2
print(data)

## ----------------------------------------------------------------------------------
data <- members[c(1, 3), ] # Rows 1 and 3
print(data)


## ----------------------------------------------------------------------------------
data <- members[ , 1] # Column 1
print(data)


## ----------------------------------------------------------------------------------
data <- members[ , 1:2] # Columns 1 and 2
print(data)


## ----------------------------------------------------------------------------------
data <- members[, c(1, 3)] # Columns 1 and 3
print(data)


## ----------------------------------------------------------------------------------
data <- members[ , c('Name', 'Birthday')] # Columns "Name" and "Birthday"
print(data)


## ----------------------------------------------------------------------------------
data <- members['Name']
print(data)


## ----------------------------------------------------------------------------------
data <- members[c(T, F, T, F), c(T, T, F)] # Select rows 1 and 3, and columns 1 and 2
print(data)


## ----------------------------------------------------------------------------------
data <- members$Name
print(data)


## ----------------------------------------------------------------------------------
data <- members[members$Height > 170, ] # Show members with height more than 170cm
data


## ----------------------------------------------------------------------------------
data <- subset(members, members$Height > 170) # Show members with height more than 170cm
data


## ----------------------------------------------------------------------------------
data <- members[1]
class(data)


## ----------------------------------------------------------------------------------
data <- members['Name']
class(data)


## ----------------------------------------------------------------------------------
data <- members[[1]]
class(data)


## ----------------------------------------------------------------------------------
data <- members[['Name']]
class(data)


## ----------------------------------------------------------------------------------
data <- members$Name
class(data)


## ----------------------------------------------------------------------------------
data <- members[1, ]
class(data)


## ----------------------------------------------------------------------------------
data <- members[1, , drop = TRUE]
class(data)


## ----------------------------------------------------------------------------------
data <- members[ , 1]
class(data)


## ----------------------------------------------------------------------------------
data <- members[, 1, drop = FALSE] # Set drop = FALSE
class(data)


## ----------------------------------------------------------------------------------
data <- members[1, 1]
class(data)


## ----------------------------------------------------------------------------------
data <- members[1, 1, drop = FALSE]
class(data)


## ----------------------------------------------------------------------------------
height_order <- order(members$Height)
print(height_order)
members[height_order, ]


## ----------------------------------------------------------------------------------
plot(members)


## ----------------------------------------------------------------------------------
write.csv(members, 'members.csv')

