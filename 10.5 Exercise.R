# Load the "practical_product.csv" and "practical_customer.csv" data files into R.
# Task 1: What are the types of data and the levels of measurement of the following variables: Cust ID, Mortgage, Year of sale.
# Task 2: Create a histogram which represents the Price variable. Use the default binwidth values first and then set bins of length $100,000. Use the data on all apartments, no matter if sold or not.
# Task 3: Interpret the results.
# Task 4: Create a scatter plot showing the relationship between Price and Area. Use the data on all apartments, no matter if sold or not. Interpret the results.
# Task 5: Calculate the mean, median, mode, skewness, and standard deviation of Price for all apartments, no matter if sold or not.
# Task 6: Interpret the measures.
# Task 7: Calculate the correlation between Price and Area. Is the result in line with the scatterplot?setwd('~/Documents/R-Practice')

getwd()

product <- read.csv('./files/practical-product.csv', stringsAsFactors = F)
customer <- read.csv('./files/practical-customer.csv', stringsAsFactors = F)

product$Type.of.property <- as.factor(product$Type.of.property)
product$Status <- as.factor(product$Status)
str(product)

customer$Entity <- as.factor(customer$Entity)
customer$Gender <- as.factor(customer$Gender)
customer$Purpose <- as.factor(customer$Purpose)
customer$Mortgage <- as.factor(customer$Mortgage)
customer$Source <- as.factor(customer$Source)
str(customer)

hg <- ggplot(product, aes(x = Price))
hg + geom_histogram(binwidth = 100000, 
                    color = "darkslategray", 
                    fill = "darkslategray4", 
                    alpha = 0.5) + 
  ggtitle("House Prices Frequency Distribution") + 
  labs(y = "Number of Houses", 
       x = "Price") + 
  theme_minimal()

sp <- ggplot(product, aes(`Area..ft..`, Price))
sp + geom_point() + 
  theme_light() + 
  labs(x = "Area in Square Feet", 
       y = "Price in USD", 
       title = "Relationship between Price and Area") 

library(psych)
describe(product$Price)
summary(product$Price)

mode <- function(x){ 
  ta <- table(x)
  tam <- max(ta)
  if (all(ta == tam))
    mod <- NA
  else
    if(is.numeric(x))
      mod <- as.numeric(names(ta)[ta == tam])
  else
    mod <- names(ta)[ta == tam]
  return(mod)
}

mode(product$Price)

cor.test(product$`Area..ft..`, product$Price)
