# Requirements: the pets data frame from Exercise 16.
name <- c("Flipper", "Bromley", "Nox", "Orion", "Dagger", "Zizi", "Carrie")
months_old <- c(53, 19, 34, 41, 84, 140, 109)
size <- c("medium", "small", "medium", "large", "small", "extra small", "large")
weight <- c(21, 8, 4, 6, 7, 2, 36)
breed <- c("dog", "dog", "cat", "cat", "dog", "cat", "dog")
pets <- data.frame(name, months_old, size, weight, breed)

# 1. Add the "Vaccinated" variable to the pets data frame, so it looks like this:
  
#        Months.old        Size Weight Breed Vaccinated
#Flipper         53      medium     21   cat        Yes
#Bromley         19       small      8   cat        Yes
#Nox             34      medium      4   dog         No
#Orion           41       large      6   dog        Yes
#Dagger          84       small      7   cat         No
#Zizi           140 extra small      2   dog         No
#Carrie         109       large     36   cat        Yes

pets$vaccinated <- c("Yes", "Yes", "No", "Yes", "No", "No", "Yes")
pets  

# Add a new observation to the bottom of the data frame of Milo, so it looks like this:

#        Months.old        Size Weight Breed Vaccinated
#Flipper         53      medium     21   cat        Yes
#Bromley         19       small      8   cat        Yes
#Nox             34      medium      4   dog         No
#Orion           41       large      6   dog        Yes
#Dagger          84       small      7   cat         No
#Zizi           140 extra small      2   dog         No
#Carrie         109       large     36   cat        Yes
#Milo            67       small      7   dog        Yes

new_obs <- data.frame(name = "Milo", months_old = 67, size = "small", weight = 7, breed = "dog", vaccinated = "Yes")
pets <- rbind(pets, new_obs)
pets

# How many rows and columns does your new data frame have? What are their names, and what is the class of each variable (the answer to this will be different depending on whether you create your data frames by encoding the string variables as factors or not).
nrow(pets)
ncol(pets)
names(pets)

# 2. Load the diamonds data set from the ggplot2 package. Check its class and if it isn't a data frame, convert it to one.
library(ggplot2)
class(diamonds)
diamonds_df <- as.data.frame(diamonds)
class(diamonds_df)

# 3. Load the built-in UsJudgeRatings data set and check its class. If it's not a data frame, convert it to one.
View(USJudgeRatings)
class(USJudgeRatings)
ratings_df <- as.data.frame(USJudgeRatings)

# Create a new variable called AVRG and calculate the average rating for each judge. Save this variable in a separate data frame.
ratings_df$AVRG <- rowMeans(ratings_df)
View(ratings_df)
