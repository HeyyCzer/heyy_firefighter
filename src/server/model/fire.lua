math.randomseed(os.time())

Fire = {
	id = nil,
    coords = nil,
	scale = nil,
    difficultyMultiplier = nil,
	health = nil
}

---Create a new fire
---@param coords vector3 the coords
---@param difficultyMultiplier number the difficulty multiplier
function Fire:new(coords, scale, difficultyMultiplier)
    local o = {}
    setmetatable(o, self)
    self.__index = self
	o.id = uuid()
    o.coords = coords
	o.scale = scale
    o.difficultyMultiplier = difficultyMultiplier
	o.health = math.ceil(math.random((o.difficultyMultiplier - 1) * 100, (o.difficultyMultiplier + 1) * 100) / 100)
	o.startedAt = os.time()

    o:syncToAllPlayers()

    return o
end

---Get the id
---@return string the fire id
function Fire:getId()
    return self.id
end

---Get the coords
---@return vector3 the fire coords
function Fire:getCoords()
    return self.coords
end

---Get the scale
---@return number the fire scale
function Fire:getScale()
    return self.scale
end

---Get the difficulty multiplier
---@return number the difficulty multiplier
function Fire:getDifficultyMultiplier()
    return self.difficultyMultiplier
end

---Sync the fire to all players
function Fire:syncToAllPlayers()
	self:syncToPlayer(-1)
end

---Sync the fire to a specific player
---@param player number the player source
function Fire:syncToPlayer(player)
    FIRES[self.id] = self
    EmitNet("syncFire", player, self.id, self)
end

---Extinguish the fire and sync
function Fire:decreaseHealth()
	self.health = self.health - 1
    self:syncToAllPlayers()

    FIRES[self.id] = nil
end

function Fire:extinguish()
    self.coords = nil
	self.scale = nil
    self.difficultyMultiplier = nil

    if self.vehicle then
        Entity(self.vehicle).state.inFire = true
    end
	self:syncToAllPlayers()

	FIRES[self.id] = nil
end

function Fire:attachToVehicle(vehicle)
    self.vehicle = vehicle
	self.vehicleNetId = NetworkGetNetworkIdFromEntity(vehicle)

    Citizen.CreateThread(function()
        if self.runningVehicleThread then return end

		self.runningVehicleThread = true
        while self.runningVehicleThread do
			if DoesEntityExist(vehicle) then
				local coords = GetEntityCoords(vehicle)
                self.coords = coords
				Entity(vehicle).state.inFire = true
				self:syncToAllPlayers()
			else
				self:extinguish()
			end
			Citizen.Wait(15000)
        end
	end)
end
