// This version of the program is only for dogs older than 2 years old.
var dogAge: Int
var earlyYears: Int = 21 // The first two years of a dog’s life count as 21 human years.
var laterYears: Int
var humanYears: Int

laterYears = (dogAge - 2) * 4 // Each following year counts as 4 human years.

humanYears = earlyYears + laterYears

print("My name is Timmy! Ruff ruff, I am \(humanYears) years old in human years.")
