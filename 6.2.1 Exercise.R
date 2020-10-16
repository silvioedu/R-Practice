

 # What are the components of an if-else statement? Define the syntax.

if(condition) {
  firstStep
} else if(condition) {
  secondStep      
} else {
  thirdStep
}


 
 # Write a statement that prints "Rotten!" if the input is equal to or larger than 1 and less than 60,
 # "Fresh" if the input is equal to or larger than 60 and less than 75,
 # and "Certified Fresh!" if the input is equal to or larger than 75.
 # For any other value, the statement should print "Please input a number between 1 and 100"
 
if(x >= 1 & x < 60){
        print("Rotten!")
} else if(x < 75) {
        print("Fresh")
} else if(x<=100){
        print("Certified Fresh!")
} else {
        print("Please input a number between 1 and 100")
}


 # Bonus exercise:
 
 # Imagine the following: Your mother announced yesteday that she's going to win the lottery. She did it with the casual
 # nonchalance of a person who's going to the shop to pick up some pasta. Today is the number draw. 
 # If she gets 6 numbers correct, she wins the lottery. If she doesn't get 6 numbers correct, she will sit staring 
 # at the screen wondering how on earth she did not manage to achive this very simple task.
 
 # Write a statement that will print "Mom wins the lottery!" if the six numbers she guessed matched the lottery numbers,
 # and "Mom did not win the lottery." if the numbers do not match.
 
 # Hint: it will be best if you create one object with randomly generated numbers, and another object which you populate
 # manually (as if you're playing the lottery), and compare the two. 
 
 # Hint: look into the length() and setdiff() functions 
 
myinputs <- c(4,5,9,15,18,22) 
lottery <- sample(1:49,6,replace=F)
 
if(length(setdiff(lottery, myinputs)) == 0){
        print("Mom won the lottery!")
} else {
        print("Mom did not win the lottery.")
}

