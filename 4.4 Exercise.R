# Requirements: the following vectors: the original cards object, and atk from the second exercise.
cards <- c("Blue-Eyes White Dragon", "Exodius", "The Winged Dragon of Ra", "Raigeki", 
           "Slifer the Sky Dragon", "Obelisk the Tormentor", "Black Luster Soldier", 
           "5-Headed Dragon", "Exodia the Forbidden One", "Dragon Master Knight")
atk <- c(3000, NA, NA, NA, NA, 4000, 3000, 5000, 1000, 5000)

# Assign a name to each element from the atk vector that corresponds to a character from the cards vector.
names(atk) <- cards
# Check the attributes of the atk element.
atk
# Is there another command you can use to check if the atk object has names assigned to it?
attributes(atk)  
# Remove the names.
names(atk) <- NULL
atk
# Can you think of another way to assign names to the atk object?