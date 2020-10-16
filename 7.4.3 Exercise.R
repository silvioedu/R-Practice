setwd('~/Documents/R-Practice')
getwd()

# Download the employees dataset from the resources for this lesson.

# Then, import it into R using your preferred import method.

# This is a large dataset, so limit the import to 200 observations. Note that 
# the dataset has Copyright information in the beginning (23 rows). Any character 
# variables should be stored as characters.
employee <- read.csv('./files/employee_data_na.csv', stringsAsFactors = FALSE, nrows = 200)
str(employee)
View(employee)

# Rename the variables as follows: "Employee number", "First name", "Last name", 
# "Birth date", "Gender", "Job title", "Salary", "From date", "To date".
names(employee) <- c("Employee number", "First name", "Last name", "Birth date", "Gender", "Job title", "Salary", "From date", "To date")
str(employee)

# Export the data set you currently have as a CSV, without saving the row names.
write.csv('./files/output.csv', row.names = FALSE)
# Import it back again to make sure everything is okay.

# If it is, great job!