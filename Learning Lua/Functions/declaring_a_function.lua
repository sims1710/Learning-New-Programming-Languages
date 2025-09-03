-- Example 1:
function getTravelTime()
  distance = 60
  mph = 10
  time = distance / mph
  print("It will take " .. time .. " hours to arrive.")
end

-- Then we can call it as many times as we want!
getTravelTime() -- output: "It will take 6 hours to arrive."
getTravelTime() -- output: "It will take 6 hours to arrive."
getTravelTime() -- output: "It will take 6 hours to arrive."
