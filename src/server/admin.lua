if config.debug then
	RegisterCommand("addfire", function()
		local fire = Fire:new(vec3(156.32, -1000.4, 29.35), 3.0, 1.0)
		print("Fire added with id: " .. fire:getId())
		fire:syncToAllPlayers()
	end)

	RegisterCommand("addfireveh", function(source)
		local veh = GetVehiclePedIsIn(GetPlayerPed(source), true)
		local x, y, z = table.unpack(GetEntityCoords(veh))
		local fire = Fire:new(vec3(x, y, z + 0.5), 1.0, 4.0)
		fire:attachToVehicle(veh)
		print("Fire added with id: " .. fire:getId())
    end)

	RegisterCommand("w", function(source, args)
		GiveWeaponToPed(GetPlayerPed(source), GetHashKey(args[1]), parseInt(args[2]), false, true)
	end)
end

local fireCreator = {}
RegisterCommand("firecreator", function(source)
	local Passport = vRP.Passport(source)

    if vRP.HasGroup(Passport, "Admin", 1) then
		local input = vKEYBOARD.showModal(source, "Criar cenário de incêndio", {
			{ type = 'input', label = 'Nome do Cenário', required = true },
        })
        if not input then return end
		
		fireCreator[source] = input[1]
		EmitNet("admin:setCreatorStatus", source, true)
	end
end)

---@diagnostic disable-next-line: deprecated
local Tunnel = module("vrp","lib/Tunnel")
---@diagnostic disable-next-line: undefined-field
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
		if not input then return end
		StartScenario(input[1])
	end
end)

OnNet("exportFires", function(data)
	local Passport = vRP.Passport(source)
	if not vRP.HasGroup(Passport, "Admin", 1) then return end

    local template = [[["%s"] = {
	coords = vec3(%s, %s, %s),
	fires = {
%s
	}
}
	]]

	local fires = ""
    for _, fire in pairs(data) do
        fires = fires ..
            "\t\t{\n" ..
            "\t\t\tx = " .. mathLength(fire.x) .. ",\n" ..
            "\t\t\ty = " .. mathLength(fire.y) .. ",\n" ..
            "\t\t\tz = " .. mathLength(fire.z) .. ",\n" ..
            "\t\t\tscale = " .. fire.scale .. ",\n" ..
            "\t\t\tdifficultyMultiplier = " .. fire.difficultyMultiplier .. ",\n" ..
            "\t\t},\n"
    end

	local currentCoords = GetEntityCoords(GetPlayerPed(source))

    template = template:format(
		fireCreator[source],
		mathLength(currentCoords.x),
		mathLength(currentCoords.y),
		mathLength(currentCoords.z),
		fires
	)

	SaveResourceFile(GetCurrentResourceName(), fireCreator[source] ..  "-" .. Passport .. ".txt", template, -1)
end)
