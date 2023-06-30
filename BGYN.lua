-- Number Guessing Game (Bot as Guesser)

-- Configuration
local minNumber = 1
local maxNumber = 100

-- Function to generate a random guess
local function generateGuess(min, max)
    return math.random(min, max)
end

-- Main game loop
print("Think of a number between " .. minNumber .. " and " .. maxNumber .. ".")
print("I will try to guess it. Let me know if my guess is too high (H), too low (L), or correct (C). (Keep the number in your head)")

local guessMin = minNumber
local guessMax = maxNumber
local attempts = 0
local guessed = false

while not guessed do
    local guess = generateGuess(guessMin, guessMax)
    attempts = attempts + 1

    print("My guess is: " .. guess)
    io.write("Is it too high (H), too low (L), or correct (C)? ")
    local feedback = io.read():lower()

    if feedback == "h" then
        guessMax = guess - 1
    elseif feedback == "l" then
        guessMin = guess + 1
    elseif feedback == "c" then
        print("Hooray! I guessed your number in " .. attempts .. " attempts.")
        guessed = true
    else
        print("Invalid feedback. Please enter H, L, or C.")
    end
end
