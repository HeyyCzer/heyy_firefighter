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
		local users = {}
		for _, v in pairs(GetPlayers()) do
            local v = tonumber(v)
            if users[v] then goto continue end

			local coords = GetEntityCoords(GetPlayerPed(v))
            for _, fire in pairs(FIRES) do
                if #(coords - fire:getCoords()) < 150.0 then
                    users[v] = true
                    EmitNet("startCheckerThread", v)
                end
            end
			::continue::
		end
		Wait(10000)
	end
end)
