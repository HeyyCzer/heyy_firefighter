-- RegisterCommand("addfire", function()
--     local fire = Fire:new(vec3(156.32, -1000.4, 29.35), 3.0, 1.0)
--     print("Fire added with id: " .. fire:getId())
-- 	fire:syncToAllPlayers()
-- end)

-- RegisterCommand("addfireveh", function(source)
--     local veh = GetVehiclePedIsIn(GetPlayerPed(source), false)
-- 	local x, y, z = table.unpack(GetEntityCoords(veh))
--     local fire = Fire:new(vec3(x, y, z + 0.5), 1.0, 4.0)
-- 	fire:attachToVehicle(veh)
--     print("Fire added with id: " .. fire:getId())
-- 	fire:syncToAllPlayers()
-- end)

RegisterCommand("firecreator", function(source)
	local Passport = vRP.Passport(source)

	if vRP.HasGroup(Passport, "Admin", 1) then
		EmitNet("admin:setCreatorStatus", source, true)
	end
end)

local Tunnel = module("vrp","lib/Tunnel")
vKEYBOARD = Tunnel.getInterface("keyboard")

RegisterCommand("startfire", function(source)
	local Passport = vRP.Passport(source)

    if vRP.HasGroup(Passport, "Admin", 1) then
        local options = {}
		
		for index in pairs(ScenariosConfig) do
			table.insert(options, { value = index, label = index })
		end

        local input = vKEYBOARD.showModal(source, "Iniciar incêndio", {
			{ type = 'select', label = 'Local', options = options, required = true },
		})
		if not input or not input[1] then return end
		StartScenario(input[1])
	end
end)

-- RegisterCommand("w", function(source, args)
-- 	GiveWeaponToPed(GetPlayerPed(source), GetHashKey(args[1]), parseInt(args[2]), false, true)
-- end)

OnNet("exportFires", function(data)
	SaveResourceFile(GetCurrentResourceName(), "fires-" .. os.time() .. ".json", json.encode(data, {sort_keys = true, indent = true}), -1)
end)
