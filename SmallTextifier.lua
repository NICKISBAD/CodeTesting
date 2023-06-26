-- Hello!, Again. Due to boredom :P I made a script called "SmallTextifier", it makes your text REALLY REALLY SMALL. do whatever

local smallCapsMap = {
  ["A"] = "ᴬ", ["B"] = "ᴮ", ["C"] = "ᶜ", ["D"] = "ᴰ", ["E"] = "ᴱ",
  ["F"] = "ᶠ", ["G"] = "ᴳ", ["H"] = "ᴴ", ["I"] = "ᴵ", ["J"] = "ᴶ",
  ["K"] = "ᴷ", ["L"] = "ᴸ", ["M"] = "ᴹ", ["N"] = "ᴺ", ["O"] = "ᴼ",
  ["P"] = "ᴾ", ["Q"] = "ᵠ", ["R"] = "ᴿ", ["S"] = "ˢ", ["T"] = "ᵀ",
  ["U"] = "ᵁ", ["V"] = "ⱽ", ["W"] = "ᵂ", ["X"] = "ˣ", ["Y"] = "ʸ",
  ["Z"] = "ᶻ", ["a"] = "ᴬ", ["b"] = "ᴮ", ["c"] = "ᶜ", ["d"] = "ᴰ",
  ["e"] = "ᴱ", ["f"] = "ᶠ", ["g"] = "ᴳ", ["h"] = "ᴴ", ["i"] = "ᴵ",
  ["j"] = "ᴶ", ["k"] = "ᴷ", ["l"] = "ᴸ", ["m"] = "ᴹ", ["n"] = "ᴺ",
  ["o"] = "ᴼ", ["p"] = "ᴾ", ["q"] = "ᵠ", ["r"] = "ᴿ", ["s"] = "ˢ",
  ["t"] = "ᵀ", ["u"] = "ᵁ", ["v"] = "ⱽ", ["w"] = "ᵂ", ["x"] = "ˣ",
  ["y"] = "ʸ", ["z"] = "ᶻ", ["0"] = "0", ["1"] = "1", ["2"] = "2",
  ["3"] = "3", ["4"] = "4", ["5"] = "5", ["6"] = "6", ["7"] = "7",
  ["8"] = "8", ["9"] = "9", [" "] = " ", ["!"] = "ᵎ",
}

function smallCapsText(inputText)
  local outputText = ""
  for i = 1, #inputText do
    local char = inputText:sub(i, i)
    outputText = outputText .. (smallCapsMap[char] or char)
  end
  return outputText
end

local input = "Hello, world!" -- Your input!


--Ignore everything down here


local smallCapsOutput = smallCapsText(input)
print(smallCapsOutput)
