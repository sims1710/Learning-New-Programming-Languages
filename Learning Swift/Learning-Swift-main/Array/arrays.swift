// Creating an Empty Array
var name = [Type]()

var scores = [Int]()
var subwayAdult = [Int]()
print(subwayAdult)

var subwayChild = [Int]()
print(subwayChild)

// Creating an Array Literal
var name = [list of values]

var location: [Double] = [40.7245, -73.9979]

var subwayAdult = [800, 1200, 1500] 
print(subwayAdult)

var subwayChild: [Int] = [400, 600, 750]
print(subwayChild)

// Index
var vowels = ["a", "e", "i", "o", "u"]

/*
The item at index 0 is "a".
The item at index 1 is "e".
The item at index 2 is "i".
The item at index 3 is "o".
The item at index 4 is "u".
*/

// .count Property : to give us a number value of elements inside the array.
var grocery = ["🥓", "🥞", "🍪", "🥛", "🍊"]

//When we print out grocery.count, the output will be 5.
print(grocery.count)

//.append() Method : add a new item to the end of an array
name.append(value)

var gymBadges = ["Boulder", "Cascade"]
gymBadges.append("Thunder") 
// ["Boulder", "Cascade", "Thunder"]

gymBadges += ["Thunder", "Rainbow"]
// ["Boulder", "Cascade", "Thunder", "Rainbow"]

//.insert() and .remove() Methods
var moon = ["🌖", "🌗", "🌘", "🌑"]

//To insert an item in the array at a specified index, we can call the .insert() method.

moon.insert("🌕", at: 0)

// ["🌕", "🌖", "🌗", "🌘", "🌑"]

/* 
The .insert() method takes two values:

The value to be inserted.
The at: and the index of the insertion.
So the code above inserted "🌕" at index 0.
*/

// To remove an item from the array, call the array’s .remove() method:

moon.remove(at: 4)

// ["🌕", "🌖", "🌗", "🌘"]

// The .remove() method only takes in one value, at: and the index of removal. So the code above removed "🌑" at index 4.

var dna = ["ATG", "ACG", "GAA", "TAT"]
dna.insert("GTG", at: 3)
dna.remove(at: 0)

// Iterating Over an Array
for item in array {
  // Loop body
}

var employees = ["Michael", "Dwight", "Jim", "Pam", "Andy"]
for item in employees {
  print(item)
}

// Prints "Michael"
// Prints "Dwight"
// Prints "Jim"
// Prints "Pam"
// Prints "Andy"
