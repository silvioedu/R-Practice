setwd('~/Documents/R-Practice')
getwd()

## Using the employee_data_na.CSV file, please answer the following questions:
employee <- read.csv('./files/employee_data_na.csv', stringsAsFactors = FALSE)
employee

## 1. Are there NA values in the data at all?
any(is.na(employee))

## 2. Find out in which columns the NA values are?
any(is.na(employee$emp_no))
any(is.na(employee$first_name))
any(is.na(employee$last_name))
any(is.na(employee$birth_date))
any(is.na(employee$gender))
any(is.na(employee$title))
any(is.na(employee$salary))
any(is.na(employee$latest_start_date))
any(is.na(employee$end_of_contract_date))

## 3. Use the sum() function to find out how many missing values there are in total?
sum(is.na(employee))

## 4. How about by variable?
sum(is.na(employee$gender))
sum(is.na(employee$salary))

## 5. Edit the observations 
employee$gender[is.na(employee$gender)] <- "Unknown"
employee$salary[is.na(employee$salary)] <- mean(employee$salary, na.rm = T)

## 6. Reload the data and delete the rows with missing values using the na.omit() function
employee <- read.csv('./files/employee_data_na.csv', stringsAsFactors = FALSE)
employee <- na.omit(employee)
View(employee)
