
RegisterCommand("firecreator", function(source)
	local Passport = vRP.Passport(source)

	if vRP.HasGroup(Passport, "Admin", 1) then
		EmitNet("admin:setCreatorStatus", source, true)
	end
end)

OnNet("exportFires", function(data)
	SaveResourceFile(GetCurrentResourceName(), "fires-" .. os.time() .. ".json", json.encode(data, {sort_keys = true, indent = true}), -1)
end)
