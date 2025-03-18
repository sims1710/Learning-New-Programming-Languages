// IF
var isLoggedIn = true

if isLoggedIn {
  print("Welcome back!")
}

var learningToCode = true;

if (learningToCode) {
  print("Don't forget to take breaks! You got this")
}

// ELSE
var isLoggedIn = false

if isLoggedIn {
  print("Welcome back!") 
} else {
  print("Access Denied.")  
}

var wearGlasses = true

if (wearGlasses) {
  print("I wear glasses")
} else {
  print("I don’t wear glasses")
}

// COMPARISON OPERATORS

/*
== Equal to
!= Not Equal to
> Greater than
< Less than
>= Greater than or equal to
<= Less than or equal to
*/

4 < 5        // true 
0.5 > 0.1    // true
3.5 <= 3.0   // false
12 >= 15     // false
"A" == "A"   // true 
"B" != "b"   // true

// ELSE IF
let grade = 85
let letterGrade: String 

if grade >= 90 {
  letterGrade = "A"
} else if grade >= 80 {
  letterGrade = "B"
} else if grade >= 70 {
  letterGrade = "C"
} else if grade >= 60 {
  letterGrade = "D"
} else if grade < 60 {
  letterGrade = "F"
} else {
  letterGrade = "N/A"
}

print(letterGrade) 
// Prints: B

// Ternary Conditional Operator

/*
A ? B :C
A is the condition to check for
B is the expression to use if the condition is true
C is the expression to use if the condition is false
*/

var orderSuccessfullyPlaced = false 

if orderSuccessfullyPlaced {
  print("Your order was received.")
} else {
  print("Something went wrong.")
}

// becomes

orderSuccessfullyPlaced ? print("Your order was received.") : print("Something went wrong.")
