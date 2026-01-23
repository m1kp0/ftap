local slide_tp_en
local loop_tp_en
local last_house
local houses = {
   [1] = CFrame.new(-491, -7, -166),
   [2] = CFrame.new(-535, -7, 93),
   [3] = CFrame.new(250, -6, 463),
   [4] = CFrame.new(554, 123, -72),
   [5] = CFrame.new(510, 83, -339),
   [6] = CFrame.new(3, -7, -2)
}

local function tp(pos)
   last_house = pos

   local me = game.Players.LocalPlayer
   local char = me.Character or me.CharacterAdded
   local hrp = char and char:FindFirstChild("HumanoidRootPart")

   if hrp then
      if not slide_tp_en then
         hrp.CFrame = pos
      else
         local info = TweenInfo.new(0.15, Enum.EasingStyle.Sine, Enum.EasingDirection.In, 0, false, 0)
         local cf = {["CFrame"] = pos}
         game:GetService("TweenService"):Create(hrp, info, cf):Play()
      end
      
      task.spawn(function()
         for i = 1, 5 do
            for _, part in ipairs(char:GetDescendants()) do
               if part:IsA("BasePart") then part.Velocity, part.RotVelocity = Vector3.zero, Vector3.zero end
            end
            task.wait()
         end
      end)
   end
end

local l = loadstring(game:HttpGet("https://raw.githubusercontent.com/m1kp0/libraries/refs/heads/main/m1kpe0_lime.lua"))()
local w = l:Window("teleport")

w:Button("pink house", function() tp(houses[1]) end)
w:Button("green house", function() tp(houses[2]) end)
w:Button("purple house", function() tp(houses[3]) end)
w:Button("china house", function() tp(houses[4]) end)
w:Button("blue house", function() tp(houses[5]) end)
w:Button("spawn", function() tp(houses[6]) end)
w:Toggle("slide tp", function(bool) slide_tp_en = bool end)
w:Toggle("loop tp", function(bool)
   loop_tp_en = bool
   while loop_tp_en and task.wait() do tp(last_house or houses[6]) end
end)
