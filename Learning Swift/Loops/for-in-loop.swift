// The for-in Loop
print("Why is 6 afraid of 7? Because …")
for num in 7...9 {
  print(num)
}

var age = 21

for age in 1...21{
  print("Are you \(age)?")
}

// The stride() Function
for num in stride(from: 0, to: 6, by: 2) {
  print(num)
}

/*
0
2
4
*/

// End number is not included

print("We're starting in...")

// Edit the range 1...3 in the loop to use stride() 🏁
for num in stride(from: 3, to: 0, by: -1) {
  print(num)
}

print("GO!")

// Iterating Through Strings
var quote = "our whole life is solving puzzles."

for character in quote {
  print(character)
  if character == "z" {
    print("There's a z!")
  }
}

var funFact = "exlxephxxxaxnts xcaxxn'xxt xxxjxumxpx."

// Add your code below 🐘
for char in funFact {
  if char != "x" {
    print(char)
  }
}

// Using Underscore
for num in 1...10 {
  print("I will not write smelly code.")
}

// But notice, we don’t actually use num in our loop body.

for _ in 1...10 {
  print("I will not write smelly code.")
}


// THE CONTINUE KEYWORD : to tell our loop to skip a value.
let challenge = "bring it"

for char in challenge {
  switch char {
    case "a", "e", "i", "o", "u":
      continue
    default:
      print(char)
  }
}

for num in 1...9 {
  if (num % 2 != 0) {
    continue
  } 
  print(num)
}

// The break Keyword : to exit out of the loop before the loop fully completes
let respect = 556

for pageNum in 1...1000 {
  if pageNum == respect {
    print("Respect means: to admire someone for their abilities.")
    break
  }
  print("On page \(pageNum) and still no 'respect'!")
}

var guessedNum = Int.random(in: 1...15)

for counter in 1...15 {
  // Add your code below 🤔
  if counter == guessedNum {
    print("It's \(guessedNum)!!")
    break
  }
  print("Is it \(counter)?")
}
