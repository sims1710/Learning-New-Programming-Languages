-- The basic syntax for declaring a variable is: name = value.
player1Score = 0
player2Score = 0

-- We can access the values inside of variables by using their variable names
print(player1Score)
--output: 0

-- We can use type() on variables to find the data type of its value.
catchphrase = "Avengers Assemble!"
print(type(catchphrase))
--output: string

--[[
If a player does achieve the highest score, we can reassign 
the existing highestScore variable to a new value.
]]
highestScore = nil
print(highestScore)
--output: nil
highestScore = 25
print(highestScore)
--output: 25

-- Error when changing the type of a variable
highestScore = 24
print(highestScore + 1) --output: 25
highestScore = "Kamala"
print(highestScore + 1) --error: attempt to add a 'string' with a 'number'

--[[
Using Arithmetic Operators With Variables:

Addition:
- Example: myVariable = myVariable + 1

Subtraction:
- Example: myVariable = myVariable - 1

Multiplication:
- Example: myVariable = myVariable * 1

Division:
- Example: myVariable = myVariable / 1

Exponentiation:
- Example: myVariable = myVariable ^ 1

Remainder (Modulo):
- Example: myVariable = myVariable % 1

Negation:
- Example: myVariable = -myVariable
]]

-- Concatenation
print("The current player with the highest score is " .. "Bruno")
--output: The current player with the highest score is Bruno

highestScorerName = "Bruno"
print("The current player with the highest score is " .. highestScorerName)
--output: The current player with the highest score is Bruno

-- Type Coercion in Concatenation and Arithmetic Operations
--[[
Type coercion is the conversion of a value from one data type to another. 
Lua does this automatically and converts a string to a number or a number 
to a string depending on what is needed.
]]

highestScore = 25
print("The highest score is: " .. highestScore)
-- it will work with the concatenation operator and string to produce "The highest score is: 25".

print("100" + 5)
--[[
105. "100" is a string data type coerced into a number data type. 
Thus, the expression becomes 100 + 5 thanks to the presence of the 
addition operator.
]]

print("100" + 5 .. 6)
--[[
1056. The expression is evaluated from left to right. From the last 
example, we know "100" + 5 evaluates to the number 105. But, the 
concatenation operator (..) coerces both 105 and 6 into string data 
types and produces 1056.
]]
