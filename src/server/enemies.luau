local serverStorage = game:GetService("ServerStorage")
local enemy = {}

function enemy.spawn(name: string, map: Model)
	local enemy: Instance = serverStorage.Enemies:FindFirstChild(name)
	if enemy then
		local cloneEnemy: Model = enemy:Clone()
		cloneEnemy.HumanoidRootPart.CFrame = map.Spawn.CFrame
		cloneEnemy.Parent = workspace
	else
		error("Enemy does not exists")
	end
end

function enemy.move() end

return enemy
