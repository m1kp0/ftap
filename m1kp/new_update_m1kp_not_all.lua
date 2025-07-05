local function notify_roblox(title, text, duration) game:GetService("StarterGui"):SetCore("SendNotification", {Title = title, Text = text, Duration = duration}) end

notify_roblox("ало микп", "да да обнова", 5)

setclipboard('loadstring(game:HttpGet("https://raw.githubusercontent.com/m1kp0/ftap/refs/heads/main/m1kp/m1kp_loader.lua"))()')

task.wait(2)

notify_roblox("чекни буфер", "скопировал скрипт если что", 5)
