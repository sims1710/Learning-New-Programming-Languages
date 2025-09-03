-- Example 1:
peopleInRoom = 10
chairsInRoom = 5
if peopleInRoom == 0 then
  print("No one showed up!")
elseif peopleInRoom <= chairsInRoom then
  print("We have enough chairs")
else	
  print("We don't have enough chairs")
end

-- Example 2:
score = 10
if score == 100 then
   print("Winner winner chicken dinner")
elseif score > 80 then 
  print("Close but not close enough")
elseif score >= 60 then
  print("Try again")
else 
  print("Were you even playing?")
end
