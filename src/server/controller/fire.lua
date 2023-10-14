FIRES = {}

OnNet("extinguishFire", function(id)
	local fire = FIRES[id]
    if fire then
		fire:extinguish()
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
				end
			end
		end

		_debug(json.encode(FIRES, {sort_keys = true, indent = true}))
		Wait(5000)
	end
end)