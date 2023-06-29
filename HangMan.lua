print("PLEASE NOTE THIS IS CASE SENSITIVE!")
print("-----------------------------------")

-- Function to check if a character is present in a word
local function isCharacterInWord(character, word)
  return string.find(word, character, 1, true) ~= nil
end

-- Function to update the display string with correctly guessed characters
local function updateDisplayString(word, displayString, character)
  local updatedDisplayString = displayString
  local startPos, endPos = string.find(word, character, 1, true)
  while startPos do
    updatedDisplayString = string.sub(updatedDisplayString, 1, startPos - 1) ..
        character .. string.sub(updatedDisplayString, endPos + 1)
    startPos, endPos = string.find(word, character, endPos + 1, true)
  end
  return updatedDisplayString
end

-- Prompt the player to enter a word
io.write("Enter a word: ")
local word = io.read()

-- Clear the console to hide the entered word
os.execute("clear") -- Use "cls" instead of "clear" if running on Windows

-- Initialize the display string with underscores
local displayString = string.rep("_", #word)

-- Initialize the number of attempts
local attempts = 6

-- Game loop
while attempts > 0 do
  -- Print the current display string and number of attempts
  print("Word: " .. displayString)
  print("Attempts left: " .. attempts)

  -- Prompt the player to enter a character
  io.write("Enter a character: ")
  local character = io.read()

  -- Clear the console after each guess
  os.execute("clear") -- Use "cls" instead of "clear" if running on Windows

  -- Check if the character is present in the word
  if isCharacterInWord(character, word) then
    print("Correct guess!")
    displayString = updateDisplayString(word, displayString, character)
  else
    print("Wrong guess!")
    attempts = attempts - 1
  end

  print("---------------------------------------")

  -- Check if the word has been completely guessed
  if displayString == word then
    print("Congratulations! You guessed the word correctly.")
    break
  end
end

-- If the player runs out of attempts, display the word
if attempts == 0 then
  print("You ran out of attempts. The word was: " .. word)
end
