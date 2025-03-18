// WHILE LOOP :  we’re not exactly sure how long we need to loop for
while condition {
  // Execute while condition remains true
}

var total = 0

while total < 50 {
  let diceRoll = Int.random(in: 1...6)
  total += diceRoll
}

var guess = Int.random(in: 1...10)
var magicNum = Int.random(in: 1...10)

while guess != magicNum {
  guess = Int.random(in: 1...10)
  magicNum = Int.random(in: 1...10)
  print("You guessed \(guess), and the number was \(magicNum).")
}

print("You're right it was \(guess)!")
