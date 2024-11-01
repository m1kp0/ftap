--[[
          __                       __                 __              __                                       __     
         |  \                     |  \               |  \            |  \                                     |  \    
  _______ \▓▓______ ____   ______ | ▓▓ ______       _| ▓▓_    ______ | ▓▓ ______   ______   ______   ______  _| ▓▓_   
 /       \  \      \    \ /      \| ▓▓/      \     |   ▓▓ \  /      \| ▓▓/      \ /      \ /      \ /      \|   ▓▓ \  
|  ▓▓▓▓▓▓▓ ▓▓ ▓▓▓▓▓▓\▓▓▓▓\  ▓▓▓▓▓▓\ ▓▓  ▓▓▓▓▓▓\     \▓▓▓▓▓▓ |  ▓▓▓▓▓▓\ ▓▓  ▓▓▓▓▓▓\  ▓▓▓▓▓▓\  ▓▓▓▓▓▓\  ▓▓▓▓▓▓\\▓▓▓▓▓▓  
 \▓▓    \| ▓▓ ▓▓ | ▓▓ | ▓▓ ▓▓  | ▓▓ ▓▓ ▓▓    ▓▓      | ▓▓ __| ▓▓    ▓▓ ▓▓ ▓▓    ▓▓ ▓▓  | ▓▓ ▓▓  | ▓▓ ▓▓   \▓▓ | ▓▓ __ 
 _\▓▓▓▓▓▓\ ▓▓ ▓▓ | ▓▓ | ▓▓ ▓▓__/ ▓▓ ▓▓ ▓▓▓▓▓▓▓▓      | ▓▓|  \ ▓▓▓▓▓▓▓▓ ▓▓ ▓▓▓▓▓▓▓▓ ▓▓__/ ▓▓ ▓▓__/ ▓▓ ▓▓       | ▓▓|  \
|       ▓▓ ▓▓ ▓▓ | ▓▓ | ▓▓ ▓▓    ▓▓ ▓▓\▓▓     \       \▓▓  ▓▓\▓▓     \ ▓▓\▓▓     \ ▓▓    ▓▓\▓▓    ▓▓ ▓▓        \▓▓  ▓▓
 \▓▓▓▓▓▓▓ \▓▓\▓▓  \▓▓  \▓▓ ▓▓▓▓▓▓▓ \▓▓ \▓▓▓▓▓▓▓        \▓▓▓▓  \▓▓▓▓▓▓▓\▓▓ \▓▓▓▓▓▓▓ ▓▓▓▓▓▓▓  \▓▓▓▓▓▓ \▓▓         \▓▓▓▓ 
                         | ▓▓                                                    | ▓▓                                 
                         | ▓▓                                                    | ▓▓                                 
                          \▓▓                                                     \▓▓                                 

]]

--либрари
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/lime"))()
--вкладка
local w = Library:Window("teleport")
--кнопки
w:Button("pink house", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-491, -7, -166)
end)

w:Button("green house", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-535, -7, 93)
end)

w:Button("purple house", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250, -6, 463)
end)

w:Button("china house", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(554, 123, -72)
end)

w:Button("blue house", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(510, 83, -339)
end)
