-- Example 1:
function getBoostedSpeed(baseSpeed)
  boostedSpeed = baseSpeed * 2
  return boostedSpeed
end

-- The starting player speed
playerSpeed = 10
-- The player drives over a speed boost
playerSpeed = getBoostedSpeed(playerSpeed)
print(playerSpeed)
-- Output: 20

-- Example 2:
function getShoppingCartTotal(subtotal, taxRate)
  total = subtotal * taxRate
  return total
end

total2 = getShoppingCartTotal(300, 1.1)
total3 = getShoppingCartTotal(50, 1.5)
finalTotal = total1 + total2 + total3
print(finalTotal)

-- Example 3:
function getBoostedSpeed(baseSpeed)
  if (baseSpeed < 10)
    return baseSpeed * 5
  end
  return baseSpeed * 2 -- This runs if we didn't already return
end

-- Example 4:
function trickyReturns(input)
  print("a")
  if input then
    print("b")
    return "foo!"
  end
  print("c")
  if 2+2 == 4 then
    print("d")
    return "boo!"
  end
  print("e")
end

trickyReturns(false)
