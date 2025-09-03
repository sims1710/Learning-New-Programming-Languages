-- Example 1
function getTravelTime(mph)
  distance = 60
  -- We've removed the variable declaration mph = 10
  time = distance / mph
  print("It will take " .. time .. " hours to arrive.")
end

getTravelTime(60) -- output: It will take 1 hours to arrive.
getTravelTime(30) -- output: It will take 2 hours to arrive.

-- Example 2
function getTravelTime(mph, distance)
  -- Now, both mph and distance are parameters
  time = distance / mph
  print("It will take " .. time .. " hours to travel " .. distance .. " miles.")
end

getTravelTime(60, 60) -- output: It will take 1 hours to travel 60 miles.
getTravelTime(30, 15) -- output: It will take 0.5 hours to travel 15 miles.
