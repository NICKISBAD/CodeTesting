--WARNING: These passwords aren't made to be completely secure, I am not responsible if you get hacked due to an unsecure password or any other reason. -Nick

local function generatePassword(length)
  local charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_"
  local password = ""
  for i = 1, length do
    local randomIndex = math.random(1, #charset)
    password = password .. string.sub(charset, randomIndex, randomIndex)
  end
  return password
end

print("Random password: " .. generatePassword(8)) -- 8 Represents the length of the password
