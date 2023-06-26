function wait(time)
    os.execute("sleep " .. time)
end

local CountUpto = 100 -- This is where it's going to count to
local speed = 0 -- This is the speed. 0 is the fastest (Recommended is 0.1)

wait(1)

io.write("What Version do you wannna use (V1 = NoDelay, V2 = WithDelay): ")
local CountVersion = io.read("*l")
--Versions = V1: "WithoutDelay" and V2: "WithDelay"

local function CountWithDelay()
  for i = 1, CountUpto do
    print(i)
  end
end

local function CountWithoutDelay()
  for i = 1, CountUpto do
    wait(speed)
    print(i)
  end
end




if CountVersion == "V1" or "v1" then 
  CountWithDelay()
elseif CountVersion == "V2" or "v2" then
 CountWithoutDelay()
else
  error("Error! Not a Version Type")
end
