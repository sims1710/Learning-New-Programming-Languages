--[[
Logical Operators:

and  ->  A and B
        True if both A and B are True.

or   ->  A or B
        True if at least one of A or B is True.

not  ->  not A
        True if A is False; False if A is True.
]]

-- Example:
score = 80
hasFreePass = false

if score == 100 or hasFreePass then
  print("You got an A+")
elseif score < 100 and score >= 70 then
  print("You passed")
end

--[[
Operator Precedence in Lua (from highest to lowest):

^           -- Exponentiation
not         -- Logical NOT
* / %       -- Multiplication, Division, Modulus
+ -         -- Addition, Subtraction
< > <= >= ~= ==   -- Comparison operators
and         -- Logical AND
or          -- Logical OR

A good rule of thumb is to use parentheses when there 
is a logical operator: and, or, and not.
]]

