# Requirements: the chess matrix from Exercise 11.

#       Player  Piece    Turn
#  [1,] "dark"  "king"   "3" 
#  [2,] "dark"  "queen"  "5" 
#  [3,] "dark"  "pawn"   "2" 
#  [4,] "dark"  "pawn"   "2" 
#  [5,] "dark"  "knight" "7" 
#  [6,] "light" "bishop" "4" 
#  [7,] "light" "king"   "3" 
#  [8,] "light" "rook"   "5" 
#  [9,] "light" "pawn"   "2" 
# [10,] "light" "pawn"   "1" 

player <- c(rep("dark", 5),rep("light",5))
piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
turn <- c(3, 5, 2, 2, 7, 4, 6, 5, 2, 1)
chess <- cbind("Player" = player, "Piece" = piece, "Turn" = turn)
chess

# Save the Piece column of the matrix as a vector.
p_vector <- chess[,"Piece"]
p_vector

# Create a factor from the vector.
p_vector <- factor(p_vector)
p_vector

# Organize the levels in the following way but do not order them: King, Queen, Rook, Bishop, Knight, Pawn.
piece <- factor(p_vector, levels = c("king", "queen", "rook", "bishop", "knight", "pawn"),
                labels = c("King", "Queen", "Rook", "Bishop", "Knight", "Pawn"))

# Rename the levels with just their initial letters. Order the levels in the way specified above.
levels(piece) <- c("K", "Q", "R", "B", "K", "P")

piece.ordered <- factor(piece, ordered = TRUE, levels = c("K", "Q", "R", "B", "K", "P"),
                        labels = c("King", "Queen", "Rook", "Bishop", "Knight", "Pawn"))

