# Requirements: the chess object from the previous exercise.
player <- c(rep("dark", 5),rep("light",5))
piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")
chess <- cbind("Player" = player, "Piece" = piece)
chess

# Transpose the chess matrix, and add a row storing the following values: 3, 5, 2, 2, 7, 4, 6, 5, 2, 1
chess.transpose <- t(chess)
turn <- c(3, 5, 2, 2, 7, 4, 6, 5, 2, 1)
chess.transpose <- rbind(chess.transpose, "Turn" = turn)

# Name the row "Turn" and transpose the matrix back to its original orientation.
chess.transpose
chess.original <- t(chess.transpose)
chess.original

# Extract the following values from the chess matrix:
  
#The first piece of the light player
chess.original[6,2]

#The Player and Piece columns
chess.original[,c(1:2)]

#All the information about the dark player
#The Pieces column; try to extract that as a matrix (Hint: lookup the drop = argument)
chess.original[,2, drop=F]

#Everything but the Piece column
chess.original[,-2, drop=F]

#The 1st and 3rd values on the second row
chess.original[2,c(1,3)]

#Replace the 3rd value on the 7th row with 3 (Hint: works just like creating an object)
chess.original[7,3] <- 3
chess.original
