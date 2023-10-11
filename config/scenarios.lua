ScenariosConfig = {
    ["CentralBank"] = {
        fires = {
            { coords = vec3(x, y, z), rot = vec3(rx, ry, rz), difficultyMultiplier = 5.0 },
        },
        vehicles = {
			{ model = "model", coords = vec4(x, y, z, h) },
        },
		peds = {
			{ model = "model", coords = vec4(x, y, z, h), animation = { upper, dict, anim, loop } },
		},
    }
}