config = {
	debug = GetConvar("heyyshop_development", "false") == "true" or true,
    firefighterPermission = "Fireman",

    scenariosOptions = {
        minFirefighters = 2,

		-- Tempos em minutos
        minTime = 40, -- Tempo mínimo para ocorrência
        maxTime = 60, -- Tempo máximo para ocorrência
		cooldownBetweenScenarios = 864000, -- Tempo de espera entre ocorrências
	}
}