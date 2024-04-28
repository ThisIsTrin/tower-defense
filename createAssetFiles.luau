local remodel = require("./remodel")
local map = remodel.readPlaceFile("tower-defense.rbxlx")

local SERVICES = { "Workspace", "ReplicatedStorage", "ServerStorage", "Lighting" }
for _, serviceName in ipairs(SERVICES) do
	local service = map[serviceName]

	remodel.writeModelFile("assets/" .. serviceName .. ".rbxm", service)
end
