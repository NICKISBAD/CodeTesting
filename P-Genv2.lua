--Password Generator v2

local chars = {
  "abcdefghijklmnopqrstuvwxyz",
  "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
  "0123456789",
  "!@#$%^&*()_+-={}[]|:;<>,.?/~",
  "ᴀʙᴄᴅᴇғɢʜɪᴊᴋʟᴍɴᴏᴘǫʀsᴛᴜᴠᴡxʏ",
  "ᵃᵇᶜᵈᵉᶠᵍʰᶦʲᵏˡᵐⁿᵒᵖᵠʳˢᵗᵘᵛʷˣʸ",
  "ₐᵦ𝒸𝒹ₑ𝒻𝓰ₕᵢⱼₖₗₘₙₒₚᵩᵣₛₜᵤᵥ𝓌ₓᵧ",
  " "
}

math.randomseed(os.time())

local function generatePassword(length)
  local password = {}
  local charCount = #chars
  local totalLength = 0

  while totalLength < length do
    local charSet = chars[(math.random(1, charCount))]
    local charIndex = math.random(1, #charSet)
    password[#password + 1] = string.sub(charSet, charIndex, charIndex)
    totalLength = totalLength + 1
  end

  return table.concat(password)
end

-- Usage
local passwordLength = 20 -- Change the length as per your requirements
local password = generatePassword(passwordLength)
print("Generated Password: " .. password)
