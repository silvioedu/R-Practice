setwd('~/Documents/R-Practice')
getwd()

# Load the two data sets into R: "skew_1.csv", and "skew_2.csv".
sk1 <- read.csv('./files/skew-1.csv', stringsAsFactors = F)
sk2 <- read.csv('./files/skew-2.csv', stringsAsFactors = F)

# Identify the skew of the data sets, both visually, and numerically. 
summary(sk1) # Median < Mean: Positive Skew
summary(sk2) # Median > Mean: Negative Skew

plot.sk1 <- ggplot(sk1, aes(x = `Dataset.1`))
plot.sk1 + geom_histogram(binwidth = 100,
                       color = "darkslategray", 
                       fill = "darkslategray4", 
                       alpha = 0.5) +
  theme_light()

plot.sk2 <- ggplot(data = sk2, aes(x = `Dataset.2`))
plot.sk2 + geom_histogram(binwidth = 100,
                       color = "darkslategray", 
                       fill = "darkslategray4", 
                       alpha = 0.5) +
  theme_light()
