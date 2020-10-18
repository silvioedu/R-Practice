setwd('~/Documents/R-Practice')
getwd()

# Requirements: the employees data from Exercise 17.
employee <- read.csv('./files/employee_data_na.csv', stringsAsFactors = FALSE)
class(employee)

# Load the employees data and convert it into a tibble. Then, make the gender and title variables into a factor.
# Hint: the commands are analogous to the as.data.frame() function.
employee <- as_tibble(employee)
class(employee)
employee$gender <- as.factor(employee$gender)
employee$title <- as.factor(employee$title)

str(employee)

# Check if the data has any missing values.
any(is.na(employee))

# Arrange the dataset by gender, then last name, and make first_name, last_name, and gender the first three variables in the data frame. Show only the employees whose salary is higher than 70,000.
employee.a <- employee.data %>% 
  select(ends_with("name"), gender, everything()) %>%
  filter(salary >= 70000) %>% 
  arrange(gender, last_name)


# Use the ends_with() function with select.

# Create a data frame containing only the employee numbers of those earning more than 70,000.

# Find out how much each position (title) earns on average by gender; create a new variable that represents the average monthly figures and arrange your result by gender and average monthly salary, from largest to smallest.