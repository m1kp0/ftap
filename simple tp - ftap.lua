--либрари
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/lime"))()
--вкладка
local w = Library:Window("тп к домам")
--кнопки
w:Button("розовый дом", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-491, -7, -166)
end)

w:Button("зеленый дом", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-535, -7, 93)
end)

w:Button("фиолетовый дом", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250, -6, 463)
end)

w:Button("китайский дом", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(554, 123, -72)
end)

w:Button("голубой дом", function()
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(510, 83, -339)
end)
