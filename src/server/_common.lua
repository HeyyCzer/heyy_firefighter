---@diagnostic disable-next-line: deprecated
local Tunnel = module("vrp","lib/Tunnel")
---@diagnostic disable-next-line: deprecated
local Proxy = module("vrp", "lib/Proxy")

---@diagnostic disable-next-line: undefined-field
vRP = Proxy.getInterface("vRP")
---@diagnostic disable-next-line: undefined-field
vRPclient = Tunnel.getInterface("vRP")

src = {}
---@diagnostic disable-next-line: undefined-field
Tunnel.bindInterface(GetCurrentResourceName(), src)
---@diagnostic disable-next-line: undefined-field
vCLIENT = Tunnel.getInterface(GetCurrentResourceName())

---Trigger a client-side event
---@param eventName string the event name
---@param source number the client source
---@vararg any extra arguments
function EmitNet(eventName, source, ...)
	_debug("Triggering client event: " .. eventName, source, json.encode(..., {sort_keys = true, indent = true}))
	TriggerClientEvent("heyy_firefighter:" .. eventName, source, ...)
end

---Trigger a server-side event
---@param eventName string the event name
---@vararg any extra arguments
function Emit(eventName, ...)
	_debug("Triggering event: " .. eventName, json.encode(..., {sort_keys = true, indent = true}))
    TriggerEvent("heyy_firefighter:" .. eventName, ...)
end

---Register a new net event handler
---@param eventName string the event name
---@param callback function the callback function
function OnNet(eventName, callback)
    _debug("Registering net event: " .. eventName)
    RegisterNetEvent("heyy_firefighter:" .. eventName, callback)
end
