local creatorStatus = false

local creator = {}
local creatorFires = {}

OnNet("admin:setCreatorStatus", function(status)
	_debug("Creator status changed to: " .. tostring(status))

	if status == creatorStatus then return end

	creatorStatus = status

	DoScreenFadeOut(500)
	Wait(500)

	Citizen.CreateThread(function()
		local buttons = {
			{
				["label"] = "Sair e Salvar",
				["button"] = "~INPUT_CELLPHONE_CANCEL~"
			},
			{
				["label"] = "Sair sem salvar",
				["button"] = "~INPUT_CELLPHONE_OPTION~"
			},
			{
				["label"] = "Remover último fogo",
				["button"] = "~INPUT_MULTIPLAYER_INFO~"
			},
			{
				["label"] = "Adicionar fogo",
				["button"] = "~INPUT_CELLPHONE_SELECT~"
			},
		}

		while creatorStatus do
			-- Draw instructions
			local instructionScaleform = RequestScaleformMovie("instructional_buttons")
			while not HasScaleformMovieLoaded(instructionScaleform) do
				Wait(0)
			end
			PushScaleformMovieFunction(instructionScaleform, "CLEAR_ALL")
			PushScaleformMovieFunction(instructionScaleform, "TOGGLE_MOUSE_BUTTONS")
---@diagnostic disable-next-line: param-type-mismatch
			PushScaleformMovieFunctionParameterBool(0)
			PopScaleformMovieFunctionVoid()
			for buttonIndex, buttonValues in ipairs(buttons or {}) do
				PushScaleformMovieFunction(instructionScaleform, "SET_DATA_SLOT")
				PushScaleformMovieFunctionParameterInt(buttonIndex - 1)
				PushScaleformMovieMethodParameterButtonName(buttonValues["button"])
				PushScaleformMovieFunctionParameterString(buttonValues["label"])
				PopScaleformMovieFunctionVoid()
			end
			PushScaleformMovieFunction(instructionScaleform, "DRAW_INSTRUCTIONAL_BUTTONS")
			PushScaleformMovieFunctionParameterInt(-1)
			PopScaleformMovieFunctionVoid()
			DrawScaleformMovieFullscreen(instructionScaleform, 255, 255, 255, 255)  

			DisableControlAction(0, 20, true)
			DisableControlAction(0, 191, true)
			DisableControlAction(0, 177, true)

			-- Create new fire
            if IsDisabledControlPressed(0, 191) and currentCoords then
                creator.addFire(currentCoords.x, currentCoords.y, currentCoords.z)
                Wait(500)

                -- Delete last fire
            elseif IsDisabledControlPressed(0, 20) then
                creator.removeFire()
                Wait(100)

                -- Exit creator & save
            elseif IsDisabledControlPressed(0, 177) then
                creator.save()
                creator.stop()
                Wait(500)

				-- Exit creator
            elseif IsDisabledControlPressed(0, 178) then
                creator.stop()
                Wait(500)
            end
		
			Wait(0)
		end
	end)

	-- Create checkpoint
	Citizen.CreateThread(function()
        while creatorStatus do
			local _, endCoords = RaycastFromPlayer()
			DrawMarker(28,endCoords.x,endCoords.y,endCoords.z + 0.3,0,0,0,0,0,0.0,1.0,1.0,1.0,255,0,0,100,false,false,0,false)
			
            currentCoords = endCoords
				
			for _, fire in ipairs(creatorFires) do
				DrawMarker(28,fire.x,fire.y,fire.z + 0.3,0,0,0,0,0,0.0,fire.scale,fire.scale,fire.scale,255,0,0,100,false,false,0,false)
			end

			Wait(0)
		end
    end)
	
	Wait(500)
	DoScreenFadeIn(500)
end)


function creator.addFire(x, y, z)
	print("addFire")

    local input = exports.keyboard:show("Adicionar fogo", {
        {
            type = "slider",
            label = "Escala",
            icon = "fire",
            min = 0.5,
            max = 5.0,
            step = 0.25,
			default = 2.0,
            required = true,
        }
    })
    if not input then return end

    local scale = input[1]
	scale = scale + 0.0
    table.insert(creatorFires, { x = x, y = y, z = z, scale = scale, difficultyMultiplier = 1.0 })

	_debug("Creator fires", json.encode(creatorFires, {sort_keys = true, indent = true}))
end

function creator.removeFire()
    table.remove(creatorFires, #creatorFires)
end

function creator.save()
	EmitNet("exportFires", creatorFires)
end

function creator.stop()
    creatorStatus = false
    creatorFires = {}
    currentCoords = nil
    Emit("admin:setCreatorStatus", false)
end



function RotationToDirection(deg)
    local rad_x = deg['x'] * 0.0174532924
    local rad_z = deg['z'] * 0.0174532924

    local dir_x = -math.sin(rad_z) * math.cos(rad_x)
    local dir_y = math.cos(rad_z) * math.cos(rad_x)
    local dir_z = math.sin(rad_x)
    local dir = vector3(dir_x, dir_y, dir_z)
    return dir
end

function RaycastFromPlayer()
    local playerPed = PlayerPedId()
    local camCoord = GetGameplayCamCoord()
    local camRot = GetGameplayCamRot(0)

---@diagnostic disable-next-line: param-type-mismatch
    local rayHandle = StartExpensiveSynchronousShapeTestLosProbe(camCoord, camCoord + RotationToDirection(camRot) * 1000, -1, playerPed)
    local _, hit, endCoords, surfaceNormal, entityHit = GetShapeTestResult(rayHandle)

    return hit, endCoords, surfaceNormal, entityHit
end