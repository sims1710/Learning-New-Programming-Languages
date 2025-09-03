--[[
Practice 1: a function called square with the parameter x 
that returns x‘s square (x multiplied with itself).
For example, square(5) should return 25.
]]

function square(x)
  return x * x
end

--[[
Practice 2: a function called getSmallerValue with 2 parameters 
a and b that returns whichever number is smaller between the two.
For example, getSmallerValue(5, 10) should return 5 and 
getSmallerValue(5, 2) should return 2.
]]
function getSmallerValue(a,b)
  if a > b then
    return b
  else 
    return a
  end
end

--[[
Practice 3: a function convertMilesToFeet with the parameter miles. 
This function should calculate the number of feet in the provided 
input miles and return the result.
For example, convertMilesToFeet(1) should return 5280 and 
convertMilesToFeet(26.2) should return 138336.
]]

function convertMilesToFeet(miles)
  return miles * 5280
end

--[[
Practice 4: a function called getAreaOfRightTriangle with a parameter 
sideLength. It should return the area of an isosceles right triangle 
with the provided side length.
For example, if sideLength is 6 then the function should return 18.
]]
function getAreaOfRightTriangle(sideLength)
  return 0.5 * sideLength * sideLength
end
