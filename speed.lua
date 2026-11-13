local Players = game:GetService("Players")
local player = Players.LocalPlayer

local SPEED = 50

local function setSpeed(character)
    local humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = SPEED
end

if player.Character then
    setSpeed(player.Character)
end

player.CharacterAdded:Connect(setSpeed)
