setwd('~/Documents/R-Practice')
getwd()

library(ggplot2)
library(ggthemes)
library(tibble)

df <- read.csv('./files/employee_data_na.csv', stringsAsFactors = F)
df <- as_tibble(df)

df$gender[is.na(df$gender)] <- "Unknown"
df$salary[is.na(df$salary)] <- mean(df$salary, na.rm = T)

df$gender <- as.factor(df$gender)
df$title <- as.factor(df$title)

# Create a bar chart representation of the number of employees in the different positions in the employees data by gender.

# Set the theme to fivethirtyeight.

# Add plot title "Job positions by gender", and axes titles: "Job position", and "Employee count". Can you do that?
  
# Try setting the theme to something different and give it another go.

# Look up the scale_fill_manual() and scale_color_manual() functions. Try setting custom colors to your plot.

# Try to change the position on the canvas the legend is in. Use the theme() function to do that.

# Try to reverse the aesthetic mappings. Does this graph give you a better idea of your data? Is it easier to read? (Shouldn't be ????)

bar <- ggplot(df, aes(x = title, fill = gender))
bar + geom_bar() + theme_fivethirtyeight() +
  labs(title = "Job positions by gender", x = "Job position", y = "Employee count") +
  scale_fill_manual(values = c("chartreuse4", "darkorange", "lightblue"))
