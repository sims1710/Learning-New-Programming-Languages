--[[
Greetings, traveler! Welcome to the Mystic Moon Potion Shop.

As a fledging new programmer in town, you’ve been enlisted to 
build a system to help this potion shop organize its operations.

The Mystic Moon Potion Shop has a lot of information to keep 
track of: inventory, customers, prices, sales, employees, shipping, 
receiving, and on and on.

Your task for this project is to create a system to generate 
receipts for each purchase. You will put together basic item 
information, the item total including tax, and display it all 
in receipt format.
]]

-- Initialising variables
debugPotionDescription = "Debug Potion - An expulsion type potion, great for evicting bugs."
debugPotionPrice = 404

loopPotionDescription = "Loop Potion - A repetition type potion, effective for menial tasks."
loopPotionPrice = 222

bytePotionDescription = "Byte Potion - A healing potion. Used to salve bites."
bytePotionPrice = 101

salesTax = 0.07
addedTax = 0
customerTotal = 0
customerItemization = ""

-- Purchase of debug potion
customerTotal = debugPotionPrice
customerItemization = debugPotionDescription

-- Purchase of byte potion
customerTotal = customerTotal + bytePotionPrice
customerItemization = customerItemization .. "\n" .. bytePotionDescription

-- Tax calculation
addedTax = customerTotal * salesTax

-- Total calculation
customerTotal = customerTotal + addedTax

-- Receipt Display
print("Customer Item(s):")
print(customerItemization)

print("Customer Total: " .. customerTotal)
