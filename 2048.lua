--[[
  ___   ___  _  _   ___  
 |__ \ / _ \| || | / _ \ 
    ) | | | | || || (_) |
   / /| | | |__   _> _ < 
  / /_| |_| |  | || (_) |
 |____|\___/   |_| \___/  (thanks for https://patorjk.com/software/taag/#p=display&f=Graffiti&t=Type%20Something%20 for helping with the big 2048 text)

]]

-- Function to check if the number reaches 2048 or higher
function checkNumber(target, start)
    local num = start
    local timesMultiplied = 0

    print("Intermediate numbers:")
    while num < target do
        print(num)
        num = num * 2
        timesMultiplied = timesMultiplied + 1
    end

    if num == target then
        print(num .. "!")
    else
        local prevNum = num / 2
        while prevNum < target do
            prevNum = prevNum * 2
            print(prevNum)
            timesMultiplied = timesMultiplied + 1
        end
        print(target .. "!")
    end

    return num, timesMultiplied
end

-- Main function
function main()
    print("Please enter the number to start the game from:")
    local startNumber = tonumber(io.read())

    if not startNumber then
        print("Invalid input. Please enter a valid number.")
        return
    end

    local targetNumber = 2048
    local result, times = checkNumber(targetNumber, startNumber)

    if result > targetNumber then
        print(string.format("It took %d times to reach %d+", times, targetNumber))
    else
        print(string.format("It took %d times to reach %d", times, targetNumber))
    end
end

-- Run the main function
main()
