add <- function(x1, y1) {
  return(x1 + y1)
}
subtract <- function(x1, y1) {
  return(x1 - y1)
}
multiply <- function(x1, y1) {
  return(x1 * y1)
}
divide <- function(x1, y1) {
  return(x1 / y1)
}
factors <- function(x1) {
  if(choice <=5){
    choice <- readline(prompt="Enter the number: ")
    print(paste("The factors of",x1,"are:"))
    for(i in 1:x1) {
      if((x1 %% i) == 0) {
        print(i)
      }
    }
    }
}
print("******Simple R Calculator - Select operation:")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")
print("5.Factors")
print("6.Prime")
choice = as.integer(readline(prompt="Enter choice[1/2/3/4]: "))
if (choice == 5 | choice == 6) {
  num1 = as.integer(readline(prompt="Enter number: "))
} else {
  num1 = as.integer(readline(prompt="Enter first number: "))
  num2 = as.integer(readline(prompt="Enter second number: "))
}
operator <- switch(choice,"+","-","*","/")
result <- switch(choice, add(num1, num2), subtract(num1, num2), multiply(num1, num2), divide(num1, num2), factors(i))
print(paste(num1, operator, num2, "=", result))

