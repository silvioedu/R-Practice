# Create a data frame that looks like this:

#Months old        Size Weight Breed
#Flipper         53      medium     21   dog
#Bromley         19       small      8   dog
#Nox             34      medium      4   cat
#Orion           41       large      6   cat
#Dagger          84       small      7   dog
#Zizi           140 extra small      2   cat
#Carrie         109       large     36   dog

name <- c("Flipper", "Bromley", "Nox", "Orion", "Dagger", "Zizi", "Carrie")
months_old <- c(53, 19, 34, 41, 84, 140, 109)
size <- c("medium", "small", "medium", "large", "small", "extra small", "large")
weight <- c(21, 8, 4, 6, 7, 2, 36)
breed <- c("dog", "dog", "cat", "cat", "dog", "cat", "dog")

pets <- data.frame(name, months_old, size, weight, breed)
pets
str(pets)

# Can you think of a way to invert the values for breed?
  
# Hint: if you haven't set the stringsAsFactors argument to FALSE, all your 
# character variables will be recorded as factors. Edit the levels of the 
# Breed variable to complete the task.

# You can access a specific variable in a data frame like you would in a matrix.
pets$breed
levels(pets$breed) <- c("dog", "cat")
pets
