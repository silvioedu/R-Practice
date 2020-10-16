cards <- c("Blue-Eyes White Dragon", "Exodius", "The Winged Dragon of Ra",
           "Raigeki", "Slifer the Sky Dragon", "Obelisk the Tormentor",
           "Black Luster Soldier", "5-Headed Dragon", "Exodia the Forbidden One",
           "Dragon Master Knight")
atk <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)
yugioh <- c(cards, atk)

# Create a vector called monster, storing the values T, T, T, F, T, T, T, T, T, T.
monster <- c(T, T, T, F, T, T, T, T, T, T)
monster

# Attach the vector you just created to the yugioh vector. Check the type of yugioh.
yugioh <- c(yugioh, monster)
typeof(yugioh)
yugioh
# Is this what you expected?

# Combine atk and monster into a vector called coerce.check. Check its type and print it, if you need. Try to get the value printed on your screen without typing in the print() command. Can you do that?
coerce.check <- c(atk, monster)
coerce.check
typeof(coerce.check)  

# What conclusions can you draw from this about R's coercion rules?

