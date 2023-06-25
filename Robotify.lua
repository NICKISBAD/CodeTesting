--[[
NNN   NNN   OOO    TTTTTTT     EEEEEE
NNNN  NNN  OO OO   TTTTTTT   EEEEEE
NNNNN NNN OOO OOO   TTT     EEE
NNNNNNNNN OOO OOO   TTT     EEEEEE
NNNN NNNN OOO OOO   TTT     EEEEEE
NNNN  NNN OOO OOO   TTT     EEE
NNNN  NNN  OO OO    TTT     EEEEEEE
NNNN  NNN   000     TTT      EEEEEEE

Hello! I'm Nick or Jiver, Whichever you wanna call me. Today (as of when i'm making this) i got bored and decided to code a script that makes your text input, Almost: Robotic like. As if a poorly designed/worn out robot was typing it. This was just for fun and took around an hour. Do whatever you want with it, maybe give me credit? (optional), Besides the point. Do whatever you want with this, mess around!
]]


-- Defining the robot-ify function
local function robotify(text)
  -- Step 1: Check if text is provided
  if text == nil or text == "" then
    local traceback = debug.traceback("", 2)
    local line = traceback:match(":(%d+):")
    error("Error at line " .. line .. ": No text provided!")
    return
  end

  -- Splitting the text into individual words
  local words = {}
  for word in text:gmatch("%S+") do
    table.insert(words, word)
  end

  -- Printing each word with randomized capitalization and symbols
  math.randomseed(os.time()) -- Seed the random generator with the current time
  local symbols = { "!", "?", "#", "*", "$" } -- List of symbols to choose from
  for i, word in ipairs(words) do
    local printText = ""
    for j = 1, #word do
      local char = word:sub(j, j)
      if math.random(2) == 1 then
        printText = printText .. char:lower()
      else
        printText = printText .. char:upper()
      end
    end
    -- Add up to 5 random symbols
    local numSymbols = math.random(3)
    for k = 1, numSymbols do
      local symbol = symbols[math.random(#symbols)]
      printText = printText .. symbol
    end
    io.write(printText .. " ")
  end
  io.write("\n")
end

-- Test the sarcasm-ify function

robotify("") -- Empty text

--[[
    ^ above func output:

      lua: main.lua:7: Error at line [43]: No text provided!
        stack traceback

      [C]: in function 'error'
      main.lua:7: in function 'sarcasmify'
      main.lua:43: in main chunk
]]
