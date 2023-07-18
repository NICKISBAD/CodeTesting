local words = {
    "banana",
    "orange",
    "apple",
    "grape",
    "melon",
    "strawberry",
    "kiwi",
    "pineapple",
    "blueberry",
    "computer",
    "keyboard",
    "mouse",
    "monitor",
    "programming",
    "language",
    "guitar",
    "piano",
    "drums",
    "violin",
    "bicycle",
    "motorcycle",
    "car",
    "airplane",
    "train",
    "elephant",
    "tiger",
    "lion",
    "giraffe",
    "ostrich",
    "camera",
    "book",
    "clock",
    "lamp",
    "television",
    "lua",
    "java",
    "python",
    "firetruck",
    "Jubilant",
    "Quixotic",
    "Mellifluous",
    "Serendipity",
    "Effervescent",
    "Surreptitious",
    "Luminous",
    "Ephemeral",
    "Incandescent",
    "Ebullient",
    "Whimsical",
    "Susurrus",
    "Ineffable",
    "Enigmatic",
    "Halcyon",
    "Sonorous",
    "Ethereal",
    "Mellifluous",
    "Quizzical",
    "Euphoria",
    "Incognito",
    "Labyrinthine",
    "Mellifluous",
    "Nebulous",
    "Querulous",
    "Effulgent",
    "Petrichor",
    "Resplendent",
    "Vellichor",
    "Zephyr"
}

local function shuffleWord(word)
    local len = #word
    for i = len, 2, -1 do
        local j = math.random(i)
        word[i], word[j] = word[j], word[i]
    end
    return table.concat(word)
end

local function getRandomWord()
    local index = math.random(1, #words)
    return words[index]
end

local function splitString(s)
    local chars = {}
    for i = 1, #s do
        chars[i] = s:sub(i, i)
    end
    return chars
end

local function main()
    print("Welcome to the Word Scramble Game!")
    print("Unscramble the word below:")

    local originalWord = getRandomWord()
    local shuffledWord = shuffleWord(splitString(originalWord:upper()))

    print(shuffledWord)

    local attempts = 3
    while attempts > 0 do
        local guess = io.read():lower()
        if guess == originalWord then
            print("Congratulations! You guessed the word correctly!")
            break
        else
            attempts = attempts - 1
            if attempts > 0 then
                print("Incorrect! Try again. Remaining attempts: " .. attempts)
            else
                print("Sorry, you're out of attempts. The word was: " .. originalWord)
            end
        end
    end
end

math.randomseed(os.time())

main()
