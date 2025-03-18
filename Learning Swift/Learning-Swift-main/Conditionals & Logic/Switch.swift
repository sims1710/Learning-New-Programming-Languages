// switch statement

var city = "Rome"

if city == "Rapa Nui" { 
  print("Moai 🗿")
} else if city == "New York" {
  print("Statue of Liberty 🗽")
} else if city == "Rome" {
  print("Colosseum 🏛")
} else {
  print("A famous landmark is the Eiffel Tower!")
}

// becomes

switch city {
  case "Rapa Nui":
    print("Moai 🗿")
  case "New York":  
    print("Statue of Liberty 🗽")
  case "Rome":
    print("Colosseum 🏛")
  default: 
    print("A famous landmark is the Eiffel Tower!")
}

// Switch Statement: Interval Matching

var year = 1943

switch year {
  case 1701...1800:
    print("18th century") 
  case 1801...1900:
    print("19th century")
  case 1901...2000: 
    print("20th century")
  case 2001...2100: 
    print("21st century")
  default: 
    print("You're a time traveler!")
} 
// Prints: 20th century

// Switch Statement: Compound Cases
var country = "India"

switch country {
  case "USA", "Mexico", "Canada":
    print("\(country) is in North America. 🌏")
  case "South Africa", "Nigeria", "Kenya":
    print("\(country) is in Africa. 🌍")
  case "Bangladesh", "China", "India":
    print("\(country) is in Asia. 🌏")
  default: 
    print("This country is somewhere in the world!")
} 
// Prints: India is in Asia. 🌏

// Switch Statement: where Clause
var randomNumber = Int.random(in: 0...10)

switch randomNumber {
  case let x where x % 2 == 0:
    print("\(randomNumber) is even")
  case let x where x % 2 == 1:
    print("\(randomNumber) is odd")
  default:
    print("Invalid")
}

var wholeNumber = Int.random(in: 10...20)
 print("The whole number is \(wholeNumber) and it is: ")

// Write your code below 
switch wholeNumber {
  case let x where x % 2 == 0:
    print("Composite")
  case let x where x % 3 == 0:
    print("Composite")
  default:
    print("Prime")
}
