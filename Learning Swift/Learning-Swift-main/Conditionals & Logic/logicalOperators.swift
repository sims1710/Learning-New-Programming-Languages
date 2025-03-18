// Logical Operators
/*
&& (AND)
|| (OR)
! (NOT)
*/

// Logical AND Operator
/*
true && true	true
true && false	false
false && true	false
false && false	false
*/

var time = 8 // PM 
var phoneInUse = true 
var brightness: Double

if time >= 8 && phoneInUse {
  brightness = 0.75 
} else {
  brightness = 1 
}

print(brightness) // Prints: 0.75

// Logical OR Operator
/*
true || true	true
true || false	true
false || true	true
false || false	false
*/

var snowing = false 
var raining = true

if snowing || raining {
 print("Wear waterproof shoes!")
}

// Logical NOT Operator
let a = true
let b = false

print(!a) // Prints: false 
print(!b) // Prints: true 

// NOTE: The && operator has higher precedence over the || operator.

