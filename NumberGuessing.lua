-- Number Guessing Game

-- Configs stuff idfk
local minNumber = 1
local maxNumber = 100
local maxAttempts = 5

-- Generate a random number
math.randomseed(os.time())
local randomNumber = math.random(minNumber, maxNumber)

-- Function to handle player input
local function handleInput(input)
  -- Convert input to number
  local guess = tonumber(input)

  -- Check if the input is a valid number
  if guess == nil then
    print("Invalid input. Please enter a number.")
  elseif guess >= maxNumber then
    print("It cannot be higher than " .. maxNumber .. "!")
    return
  end

  -- Compare the guess with the random number
  if guess < randomNumber then
    print("Too low!")
  elseif guess > randomNumber then
    print("Too high!")
  else
    print("Congratulations! You guessed the number!")
    return true
  end

  return false
end

-- Main game loop
local attempts = 0
local won = false

print("B0T/CPU: Welcome to the Number Guessing Game! I'm CPU or B0T, Let's see how well you do")
print(' ')
print("B0T/CPU: I'm thinking of a number between " .. minNumber .. " and " .. maxNumber .. ".")
print(' ')
print("B0T/CPU: You have " .. maxAttempts .. " attempts to guess it.")
print(' ')

while attempts < maxAttempts do
  attempts = attempts + 1

  io.write("Attempt " .. attempts .. ": ")
  local input = io.read()

  if handleInput(input) then
    won = true
    break
  end
end

-- Results
if not won then
  print("B0T/CPU: Game over! You ran out of attempts. The number was " .. randomNumber .. ".")
end
