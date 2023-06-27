-- Nick's Sub-Standard Dice roll (Slightly buggy)

-- Function to roll a single dice
local function rollDice(sides)
    return math.random(1, sides)
end

local function AddSeperator()
    print(' ')
end

-- Delay
local function delay(seconds)
    os.execute("sleep " .. tonumber(seconds))
end


-- Prompt the player for the number of dice and sides
print("Welcome to Nick's sub-standard dice roll!")
delay(2)
AddSeperator()
print("How many dice would you like to roll?")
AddSeperator()
local numDice = tonumber(io.read())
AddSeperator()

print("How many sides should each dice have?")
AddSeperator()
local numSides = tonumber(io.read())
AddSeperator()

-- Validate user input
if not numDice or numDice < 1 then
    numDice = 1
    print("Invalid number of dice. Defaulting to 1 dice.")
end

if not numSides or numSides < 2 then
    numSides = 6
    print("Invalid number of sides. Defaulting to 6 sides.")
end

-- Roll the dice and display the results
print("\nRolling " .. numDice .. " dice with " .. numSides .. " sides each...\n, if this takes longer than 3 minutes restart the script")
AddSeperator()
delay(3)
for i = 1, numDice do
    local result = rollDice(numSides)
    print("Dice " .. i .. ": " .. result)
end
