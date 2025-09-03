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
