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


box <- ggplot(df, aes(x = title, y = salary))
my.box <- box + geom_boxplot(outlier.color = "orangered1", outlier.shape = 3) +
  geom_jitter(width = 0.3, aes(color = gender)) +
  ggtitle("Salary distribution", subtitle = "based on position and gender") +
  ylab("Salary") + xlab("Job position") + 
  theme_economist_white() + 
  theme(legend.position = "right", axis.text.x = element_text(angle = 90, hjust = 1)) +
  coord_flip() 

my.box

# Using the filtered data from Exercise 21, create a box plot showing the salary distribution according to position.

# Set outlier identifiers.

# Add a layer that overlays data points on each position box and have them be colored according to gender.

# Set a title "Salary distribution" and a subtitle "based on position and gender".

# Set the axis labels.

# Add a theme. 

# P.S. To make the title labels fit on the canvas, set the following argument in the theme layer:
  
  axis.text.x = element_text(angle = 90, hjust = 1)

# This rotates the labels at 90 degrees, and adjusts their horizontal justification.

# Use the appropriate canvas orientation.

# Finally, think about coloring your graph. Is there an easier way to get tasteful combinations of colors than doing it manually? Yes, there is.

# Lookup the wesanderson package. Lookup the RColorBrewer package. Lookup the scale_color_manual() function, and the scale_color_brewer() function. Set a palette for your graph to make it look great. 