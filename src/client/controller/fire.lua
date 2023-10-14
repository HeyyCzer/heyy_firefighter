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

                local firesNum = GetNumberOfFiresInRange(coords.x, coords.y, coords.z, 5.0)
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
end)

OnNet("syncFire", function(id, fireData)
    local fire = fires[id]

	_debug("Requested sync:", id, json.encode(fireData, { sort_keys = true, indent = true }))

	local coords = fireData.coords
	local rot = fireData.rot
	local difficultyMultiplier = fireData.difficultyMultiplier
	local scale = fireData.scale

	if fireData.coords then
		if fire then
			RemoveScriptFire(fire.scriptFire)
			StopParticleFxLooped(fire.particle, false)
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
			particle = StartParticleFxLoopedAtCoord(particles.DEFAULT[2], coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, scale, false, false, false, false)
		}
		fires[id] = fire
	else
		--- Remove the fire
		if fire then
            RemoveScriptFire(fire.scriptFire)
			StopParticleFxLooped(fire.particle, false)
			fires[id] = nil
		end
	end
end)

RegisterCommand("fires", function(_, args, rawCommand)
	print(json.encode(fires))
end)