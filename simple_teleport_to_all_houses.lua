-- slide teleport toggle
local slide_tp_en

-- teleport function
local function tp(pos)
   local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart; if hrp then
      if not slide_tp_en then
         hrp.CFrame = pos
      else
         local info = TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
         local cf = {["CFrame"] = pos}
         game:GetService("TweenService"):Create(hrp, info, cf):Play()
      end
   end
end

-- library
local l = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/lime"))()

-- window
local w = l:Window("teleport")

-- teleport buttons
w:Button("pink house", function() tp(CFrame.new(-491, -7, -166)) end)
w:Button("green house", function() tp(CFrame.new(-535, -7, 93)) end)
w:Button("purple house", function() tp(CFrame.new(250, -6, 463)) end)
w:Button("china house", function() tp(CFrame.new(554, 123, -72)) end)
w:Button("blue house", function() tp(CFrame.new(510, 83, -339)) end)
w:Button("spawn", function() tp(CFrame.new(3, -7, -2)) end)

-- slide teleport toggle
w:Toggle("slide tp", function(bool) slide_tp_en = bool end)
