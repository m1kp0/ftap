local function notify_roblox(title, text, duration) game:GetService("StarterGui"):SetCore("SendNotification", {Title = title, Text = text, Duration = duration}) end
notify_roblox("Нельзя", "убрал скрипт на время", 5)
