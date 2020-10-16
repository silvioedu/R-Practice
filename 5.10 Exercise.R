
# create a list which prints like this: 

# [[1]]
# [1]  1  3  5  7  9 11
#
# [[2]]
# [[2]][[1]]
# [1] "Happy Birthday"
#
# [[2]][[2]]
# [1] "Archery" 
l1 <- list(seq(1,11,2),list("Happy Birthday","Archery"))
l1
str(l1)

# extract the numbers as a vector
l1[[1]]

# extract the phrase Happy Birthday as a vector
l1[[2]][[1]]

# extract the second item of the second list as a list
l1[[2]][[2]]

# extract the second list as a list
l1[[2]]

# extract the numbers item as a list
l1[1]

# add 2 to each element in the numbers item
l1[[1]] <- l1[[1]]+2
l1

# name the items in the list as "Numbers" and "Phrases"
names(l1) <- c("Numbers", "Phrases")
l1

# you can use the $ to extract named items of a list
# if you extract the numbers item from newList with the $, what other extraction 
# method is this equivalent to?
l1$Numbers

# use the dollar sign to repeat the addition from above (add 2 to each element in the numbers list)
l1$Numbers <- l1$Numbers + 2

# add a new item called "Brands" to the list. It should contain the brands Kellogs, Nike, iPhone
# use either brackets or the dollar sign to do that
l1$Brands <- c("Kellogs", "Nike", "iPhone")

# remove the iPhone from the Brands item
l1$Brands <- l1$Brands[-3]
l1

# remove the Brands item from the list
l1$Brands <- NULL
l1
