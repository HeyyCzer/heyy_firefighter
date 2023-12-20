local fires = {}

local particles = {
	DEFAULT = {"core","ent_amb_fbi_fire_door"},
}

local runningThread = false
OnNet("startCheckerThread", function()
	if runningThread then return end
	
	runningThread = true
    while runningThread do
		local nearAnyFire = false
        local coords = GetEntityCoords(PlayerPedId())
		
		local totalFires = 0

        for id, fire in pairs(fires) do
            local distance = #(coords - fire.coords)
            if distance < 150.0 then
                nearAnyFire = true

				if fire.vehicle then
					_debug("Vehicle fire detected", fire.vehicle)
					local vehicle = fire.vehicle
					if DoesEntityExist(vehicle) then
						fire.coords = GetEntityCoords(vehicle)
						SetVehicleEngineHealth(vehicle, 100.0)
						SetVehicleBodyHealth(vehicle, 100.0)
						SetVehiclePetrolTankHealth(vehicle, 1000.0)
						SetVehicleUndriveable(vehicle, true)
						_debug("Preventing vehicle from exploding...")
						Emit("syncFire", id, fire)
					end
				end

                local firesNum = GetNumberOfFiresInRange(fire.coords.x, fire.coords.y, fire.coords.z, 5.0)
                if firesNum < 1 then
                    EmitNet("extinguishFire", id)
                end

				totalFires += firesNum
            end
        end

        _debug("nearAnyFire: " .. tostring(nearAnyFire), totalFires)

		if not nearAnyFire then
			break
		end
		Citizen.Wait(3000)
    end
	runningThread = false
	_debug("Stopped thread, no fires nearby")
end)

OnNet("syncFire", function(id, fireData)
    local fire = fires[id]

	local isPlayerFirefighter = (LocalPlayer.state[config.firefighterPermission] or false)
	_debug("Requested sync:", id, isPlayerFirefighter, json.encode(fireData, { sort_keys = true, indent = true }))

	local coords = fireData.coords
	local rot = fireData.rot
	local difficultyMultiplier = fireData.difficultyMultiplier
	local scale = fireData.scale

	if fireData.coords then
		if fire then
			RemoveBlip(fire.blip)
			RemoveScriptFire(fire.scriptFire)
			StopParticleFxLooped(fire.particle, false)
		end

		local blip
		if isPlayerFirefighter then
			blip = AddBlipForCoord(coords.x, coords.y, coords.z)
			SetBlipSprite(blip, 436)
			SetBlipColour(blip, 1)
			SetBlipScale(blip, 0.8)
			SetBlipAsShortRange(blip, true)
			BeginTextCommandSetBlipName("STRING")
			AddTextComponentString("Incêndio")
			EndTextCommandSetBlipName(blip)
		end

		while not HasNamedPtfxAssetLoaded(particles.DEFAULT[1]) do
			RequestNamedPtfxAsset(particles.DEFAULT[1])
			Citizen.Wait(1)
		end
		UseParticleFxAssetNextCall(particles.DEFAULT[1])

		fire = {
			id = id,
			coords = coords,
			rot = rot,
			difficultyMultiplier = difficultyMultiplier,
			scriptFire = StartScriptFire(coords.x, coords.y, coords.z, 5, true),
			particle = StartParticleFxLoopedAtCoord(particles.DEFAULT[2], coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, scale / 1.0, false, false, false, false),
			blip = blip,
			vehicle = fireData.vehicle,
		}
		fires[id] = fire
	else
		--- Remove the fire
		if fire then
			RemoveBlip(fire.blip)
            RemoveScriptFire(fire.scriptFire)
			StopParticleFxLooped(fire.particle, false)
			fires[id] = nil
		end
	end
end)

if config.debug then
	RegisterCommand("fires", function(_, args, rawCommand)
		print(table.size(fires), json.encode(fires))
	end)

	RegisterCommand("vehfire", function(_, args, rawCommand)
		TriggerServerEvent("heyy_firefighter:startVehicleFire", VehToNet(GetVehiclePedIsIn(PlayerPedId())))
	end)
end