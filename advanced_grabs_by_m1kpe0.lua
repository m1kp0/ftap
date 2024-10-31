--lib
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/turtle"))()
local Window = library:Window("Advanced grabs by m1kpe0")

--coroutines
local heavenGrabCor
local crazyGrabCor

--variables
local crazyGrabDelay = 0.1

--grabs
Window:Toggle("Heaven grab", true, function(Value)
    if Value then
        heavenGrabCor = coroutine.create(function()
            while true do
                pcall(function()
                    local child = workspace:FindFirstChild("GrabParts")
                    if child and child.Name == "GrabParts" then
                        local grabPart = child:FindFirstChild("GrabPart")
                        local grabbedPart = grabPart:FindFirstChild("WeldConstraint").Part1
                        local targetChar = grabbedPart.Parent
                        local target = targetChar.Torso
                        if targetChar then
                            local velocity = target:FindFirstChild("heavenG") or Instance.new("BodyVelocity")
                            velocity.Name = "heavenG"
                            velocity.Parent = target
                            velocity.Velocity = Vector3.new(0, 9999999, 0)
                            velocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                            Debris:AddItem(velocity, 100)
                        end
                    end
                end)
                wait()
            end
        end)
        coroutine.resume(heavenGrabCor)
    else
        if heavenGrabCor then
            coroutine.close(heavenGrabCor)
            heavenGrabCor = nil
            for _, v in ipairs(Players:GetPlayers()) do
                local a = v.Torso
                if a then
                    for _, i in pairs(a:GetChildren()) do
                        if i.Name == "heavenG" and i:IsA("BodyVelocuty") then i:Destroy() end
                    end
                end
            end
        end
    end
end)

Window:Toggle("Crazy grab", true, function(Value)
    if Value then
        crazyGrabCor = coroutine.create(function()
            while true do
                pcall(function()
                    local child = workspace:FindFirstChild("GrabParts")
                    if child and child.Name == "GrabParts" then
                        local grabPart = child:FindFirstChild("GrabPart")
                        local grabbedPart = grabPart:FindFirstChild("WeldConstraint").Part1
                        local targetChar = grabbedPart.Parent
                        local target = targetChar.Torso
                        if targetChar then
                            targetChar.HumanoidRootPart.CFrame = CFrame.new(-17, 421, 50)
                            wait(crazyGrabDelay)
                            targetChar.HumanoidRootPart.CFrame = CFrame.new(145, 397, -126)
                            wait(crazyGrabDelay)
                            targetChar.HumanoidRootPart.CFrame = CFrame.new(157, 254, 89)
                            wait(crazyGrabDelay)
                            targetChar.HumanoidRootPart.CFrame = CFrame.new(-26, 207, -26)
                            wait(crazyGrabDelay)
                            targetChar.HumanoidRootPart.CFrame = CFrame.new(-23, 456, -19)
                            wait(crazyGrabDelay)
                            targetChar.HumanoidRootPart.CFrame = CFrame.new(15, 211, 45)
                            wait(crazyGrabDelay)
                        end
                    end
                end)
                wait()
            end
        end)
        coroutine.resume(crazyGrabCor)
    else
        if crazyGrabCor then
            coroutine.close(crazyGrabCor)
            crazyGrabCor = nil
        end
    end
end)
