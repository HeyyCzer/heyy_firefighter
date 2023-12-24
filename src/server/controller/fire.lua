FIRES = {}

OnNet("extinguishFire", function(id)
	local fire = FIRES[id]
    if fire then
		if fire.health > 0 then
            fire:decreaseHealth()
			fire:syncToAllPlayers()
		else
			fire:extinguish()
		end
	end
end)

CreateThread(function()
    while true do
		for _, v in pairs(GetPlayers()) do
            local v = tonumber(v)

			local coords = GetEntityCoords(GetPlayerPed(v))
            for _, fire in pairs(FIRES) do
                if #(coords - fire:getCoords()) < 150.0 then
                    EmitNet("startCheckerThread", v)
					break
                end
            end
		end
		Wait(10000)
	end
end)

local cooldown = {}
OnNet("startVehicleFire", function()
	local vehicle = GetVehiclePedIsIn(GetPlayerPed(source), false)
    if DoesEntityExist(vehicle) then
        if cooldown[vehicle] and os.time() < cooldown[vehicle] then
            return
        end
		cooldown[vehicle] = os.time() + 60
		local x, y, z = table.unpack(GetEntityCoords(vehicle))
		local fire = Fire:new(vec3(x, y, z + 0.5), 1.0, 4.0)
		fire:attachToVehicle(vehicle)
		fire:syncToAllPlayers()
	end
end)

OnNet("blockVehicleFire", function()
	local vehicle = GetVehiclePedIsIn(GetPlayerPed(source), false)
    if DoesEntityExist(vehicle) then
		if cooldown[vehicle] and os.time() < cooldown[vehicle] then
			return
		end
		cooldown[vehicle] = os.time() + 60
	end
end)
