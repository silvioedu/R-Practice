setwd('~/Documents/R-Practice')
getwd()

library(ggplot2)
library(ggthemes)
library(tibble)

# Using the employees data,  plot the salary frequencies. Limit the salaries under consideration to only those above 45,000 per year.
df <- read.csv('./files/employee_data_na.csv', stringsAsFactors = F)
df <- as_tibble(df)

df$gender[is.na(df$gender)] <- "Unknown"
df$salary[is.na(df$salary)] <- mean(df$salary, na.rm = T)

df$gender <- as.factor(df$gender)
df$title <- as.factor(df$title)

# Choose an appropriate binwidth, and appearance.
hist <- ggplot(df, aes(salary))
hist + geom_histogram(binwidth = 5000, color = "darkslategray",
                      fill = "darkseagreen2", alpha = 0.7) +
  labs(title = "Salary distribution in the employee data",
       x = "Salary", y = "Number of employees in the salary bracket") +
  theme_solarized_2(light = FALSE, base_size = 15, base_family = "serif")

# Title the x axis as "Salary", and the y axis as "Number of employees in the salary bracket".

# Title the plot as "Title distribution in the employee data".

# Install the ggthemes package and chose a theme from there. Look at the descriptions of each and choose one that has modifiable size and font family. Increase the size and set the font family to serif. 