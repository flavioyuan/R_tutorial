#
# Basic R
#

a <- 1
b <- 2

a + b

vetor <- c(1:10)
vetor

sum(vetor)

class(a)
class(vetor)

# Ordinal variables

# temperature observations

temperature_vector <- c('High', 'Low', 'High', 'Low', 'Medium')
class(temperature_vector)

# Specify that they are ordinal variables with the given levels
temperature_factor <- factor(temperature_vector, order=TRUE, levels=c('Low', 'Medium', 'High'))
class(temperature_factor)
# "ordered", "factor"

temperature_factor

# Interval and ratio variables

# this is an interval variable
longitudes <- c(10, 20, 30, 40)

# this is a ratio variable
chronos <- c(10.60, 10.12, 9.58, 11.1)

# histograms and distributions

head(datasets::iris)
summary(datasets::iris)

# get all Sepal length of setosa Species using Basic R
setosa_sepal_lengths <- iris[iris$Species == "setosa", "Sepal.Length"]

# get all Sepal length of setosa Species using dplyr package. By chatGPT

# Install and load the dplyr package if not already installed
# install.packages("dplyr")
library(dplyr)

# Filter the iris dataset to get Sepal.Length where Species is "setosa"
setosa_sepal_lengths_dplyr <- iris %>%
    filter(Species == "setosa") %>%
    select(Sepal.Length)

print(setosa_sepal_lengths_dplyr)
