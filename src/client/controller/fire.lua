local fires = {}

local particles = {
	DEFAULT = {"core","ent_amb_fbi_fire_door"},
}

local runningThread = false
OnNet("startCheckerThread", function()
	if runningThread then return end
	
	local repeatID = 0
	runningThread = true
    while runningThread do
		local nearAnyFire = false
        local coords = GetEntityCoords(PlayerPedId())
		local totalFires = 0
		repeatID = repeatID + 1
        local lastRepeatID = repeatID
        for id, fire in pairs(fires) do
            local distance = #(coords - fire.coords)
            if distance < 150.0 then
                nearAnyFire = true

				if fire.vehicleNetId then
					if NetworkDoesNetworkIdExist(fire.vehicleNetId) then
						_debug("Vehicle exists")
						local vehicle = NetworkGetEntityFromNetworkId(fire.vehicleNetId)
                        if DoesEntityExist(vehicle) then
                            NetworkRequestControlOfEntity(vehicle)
							fire.coords = GetEntityCoords(vehicle)
							async(function()
								while lastRepeatID == repeatID and NetworkHasControlOfEntity(vehicle) do
									SetVehicleEngineHealth(vehicle, 100.0)
									SetVehicleBodyHealth(vehicle, 100.0)
									SetVehiclePetrolTankHealth(vehicle, 1000.0)
									SetVehicleUndriveable(vehicle, true)
									_debug("Preventing vehicle from exploding...")
									Citizen.Wait(500)
								end
							end)

							if repeatID % 5 == 0 then
								Emit("syncFire", id, fire)
							end
						end
					end
				end

                local firesNum = GetNumberOfFiresInRange(fire.coords.x, fire.coords.y, fire.coords.z, 1.0)
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
		Citizen.Wait(5000)
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
			if fire.scriptFire then
				RemoveScriptFire(fire.scriptFire)
			end
			if fire.particle then
				StopParticleFxLooped(fire.particle, false)
			end
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

		local scriptFire = StartScriptFire(coords.x, coords.y, coords.z, 5, true)
		local particle = StartParticleFxLoopedAtCoord(particles.DEFAULT[2], coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, scale / 1.0, false, false, false, false)

		fire = {
			id = id,
			coords = coords,
			rot = rot,
			scale = scale,
			difficultyMultiplier = difficultyMultiplier,
            scriptFire = scriptFire,
			particle = particle,
			blip = blip,
			vehicleNetId = fireData.vehicleNetId,
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
	
    OnNet("testVeh", function(...)
		local args = {...}
		print("Received vehicle:", json.encode(args))
        print("Vehicle exists:", DoesEntityExist(args[1]))
        print("Vehicle is networked:", NetworkDoesNetworkIdExist(args[2]))
		print("Vehicle is networked:", NetworkDoesNetworkIdExist(args[3]))
	end)
end