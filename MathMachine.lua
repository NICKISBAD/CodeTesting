-- Function to perform addition
local function add(numbers)
  local sum = 0
  for _, num in ipairs(numbers) do
    sum = sum + num
  end
  return sum
end

-- Function to perform subtraction
local function subtract(numbers)
  local result = numbers[1]
  for i = 2, #numbers do
    result = result - numbers[i]
  end
  return result
end

-- Function to perform multiplication
local function multiply(numbers)
  local result = 1
  for _, num in ipairs(numbers) do
    result = result * num
  end
  return result
end

-- Function to perform division
local function divide(numbers)
  local result = numbers[1]
  for i = 2, #numbers do
    result = result / numbers[i]
  end
  return result
end

-- Function to ask for user input and perform calculations
local function ActivateMathMachine()
  print("How many numbers would you like to use?")
  local count = tonumber(io.read())

  if count <= 0 then
    print("Invalid count!")
    return
  end

  local numbers = {}
  for i = 1, count do
    print("Enter number " .. i .. ":")
    local num = tonumber(io.read())
    table.insert(numbers, num)
  end

  print(" ")
  print("Select an operation:")
  print(" ")
  print("1. Addition")
  print("2. Subtraction")
  print("3. Multiplication")
  print("4. Division")
  print(" ")

  local choice = tonumber(io.read())

  local result
  if choice == 1 then
    result = add(numbers)
  elseif choice == 2 then
    result = subtract(numbers)
  elseif choice == 3 then
    result = multiply(numbers)
  elseif choice == 4 then
    result = divide(numbers)
  else
    print("Invalid choice!")
    return
  end

  print("Result: " .. result)
end

-- Call the math machine function to start the program
ActivateMathMachine()
