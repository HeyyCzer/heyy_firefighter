local timeToNextScenario = nil
local lastScenarioTime = nil

Citizen.CreateThread(function()
    while true do
        local firefighters, total = vRP.NumPermission(config.firefighterPermission)
        if total >= config.scenariosOptions.minFirefighters then
            if not timeToNextScenario then
				local time = math.random(config.scenariosOptions.minTime * 60, config.scenariosOptions.maxTime * 60)
                timeToNextScenario = os.time() + time
				
				_info("Tempo até o próximo incêndio:", time)
			end

            if
                os.time() >= timeToNextScenario and
                (
					not lastScenarioTime or
                    (lastScenarioTime + (config.scenariosOptions.cooldownBetweenScenarios * 60) < os.time())
                )
			then

				local scenarioIndex = getRandomIndex(ScenariosConfig)
                local scenario = ScenariosConfig[scenarioIndex]
                for _, fire in pairs(scenario.fires) do
                    Fire:new(vector3(fire.x, fire.y, fire.z), fire.scale, fire.difficultyMultiplier)
                end

                lastScenarioTime = os.time()
                timeToNextScenario = nil

                _info("Incêndio iniciado:", scenarioIndex)

				for _, v in pairs(firefighters) do
					exports["heyy_policenotify"]:notify(v, {
						code = "10-31", -- obrigatório - (também pode ser algum texto, por exemplo: "LOCAL")
						title = "Incêncio", -- obrigatório
						location = {
							x = scenario.coords.x,
							y = scenario.coords.y,
							z = scenario.coords.z
						},
						color = "red", -- red/yellow/purple/pink/lightblue/blue (Padrão: blue)
						blipColor = 44,
					})
				end
			end
		end
		Wait(5000)
		-- Wait(30000)
	end
end)