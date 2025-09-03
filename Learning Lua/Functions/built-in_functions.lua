-- Full list is at https://www.lua.org/manual/5.4/manual.html#6.4
-- Examples: 
string.upper("hello") -- returns HELLO
math.min(100, 250) -- returns 100
math.random() -- can return any decimal between 0 and 1
math.random(0, 100) -- can return any number between 0 and 100, including 0 or 100.

function printStringLength(input)
  print(string.len(input))
end

printStringLength("Hello There!") -- returns 12
