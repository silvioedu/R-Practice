# Find what arguments the sample() function takes. We will need that for later.
?sample

# Find out what arguments the median function takes. While calling the median 
# for the lvl object, try setting the na.rm = argument to TRUE. 
lvl <- c(8, 10, 10, 1, 10, 10, 8, 12, 1, 12)
median(lvl)
median(lvl, na.rm = TRUE)

# Does R return a different value from the one when na.rm = is set to FALSE 
# (NB: the default value for the na.rm = argument is FALSE; this means that 
# whenever we do not explicitly specify that it must be set to TRUE, it is set to FALSE)? 
  
# Now try the same command but with the atk variable. 
atk <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)
median(atk)
median(atk, na.rm = TRUE)

# Is the output different? Why do you think that is?