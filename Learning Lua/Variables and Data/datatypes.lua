--[[
Data Types Overview:

Number:
- Definition: A numeric value (positive, negative, or decimal).
- Syntax Examples: 10, 3.5, -4
- Use: To store values like the number of Instagram followers.

String:
- Definition: A sequence of characters in quotes (letters, numbers, spaces, or symbols).
- Syntax Examples: "This is a string", 'I have 5 cats!'
- Use: To store text like a username.

Boolean:
- Definition: A true or false value.
- Syntax Examples: true, false
- Use: To show settings like whether dark mode is on.

Nil:
- Definition: Represents no value or an empty state.
- Syntax Example: nil
- Use: To show an empty field, like an unanswered form box.
]]

--[[
Strings can be created using double quotes (") or single quotes ('), 
it’s up to you (as long as they match). Both of these are valid strings:
]]

print("Hello, World!")
-- output: Hello, World!

print('Hello, World!')
-- output: Hello, World!

--[[
To include single and double quote characters in your string, 
use \ in front of the character you want to include:
]]

print("\"What? Like it's hard?\" -Legally Blonde (2001)")
-- output: "What? Like it's hard?" - Legally Blonde (2001)

-- Whenever you’re not sure what type your value is, use the type()
print(type("What am I?"))
-- output: string
