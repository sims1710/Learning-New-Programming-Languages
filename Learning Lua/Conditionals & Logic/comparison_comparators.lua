--[[
In a Lua program, we can compare values with a handful 
of symbols we call comparison operators.

A > B: A Greater than B
A >= B: A Greater than or Equal to B
A < B: A Less than B
A <= B: A Less than or Equal to B
A == B: A Equals B
A ~= B: A doesn’t Equal B
]]

A = 50
B = 10

if A > B then 
  print("A is larger")
end

if B > A then 
  print("B is larger")
end

if A == B then 
  print("They are equal")
end
