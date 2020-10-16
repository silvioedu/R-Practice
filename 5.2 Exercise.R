# Pictured below is a matrix. Recreate this matrix in at least three different ways. 

#Player  Piece   
#[1,] "dark"  "king"  
#[2,] "dark"  "queen" 
#[3,] "dark"  "pawn"  
#[4,] "dark"  "pawn"  
#[5,] "dark"  "knight"
#[6,] "light" "bishop"
#[7,] "light" "king"  
#[8,] "light" "rook"  
#[9,] "light" "pawn"  
#[10,] "light" "pawn"  

player <- c(rep("dark", 5),rep("light",5))
player

piece <- c("king", "queen", "pawn", "pawn", "knight", "bishop", "king", "rook", "pawn", "pawn")

chess <- c(player, piece)
chess

# Hint. Use the dim() function, the matrix() function, and cbind().
dim(chess) <- c(10,2)
chess
colnames(chess) <- c("Player", "Piece")
chess

# Can you think of a faster way to create this matrix?
# Assign names to it in two different ways.
chess.matrix <- matrix(chess, nrow = 10, dimnames = list(NULL, c("Player", "Piece")))
chess.matrix

# Would using rbind() be practical in this case?
chess.rbind <- rbind("Player" = player, "Piece" = piece)
chess.rbind

chess.cbind <- cbind("Player" = player, "Piece" = piece)
chess.cbind

# Can you think of a way to make adding a row to the matrix worthwhile?