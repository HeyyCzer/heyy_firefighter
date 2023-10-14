local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

vSERVER = Tunnel.getInterface(GetCurrentResourceName())

---Trigger a server-side event
---@param eventName string the event name
---@vararg any extra arguments
function EmitNet(eventName, ...)
	_debug("Triggering server event: " .. eventName, json.encode(..., {sort_keys = true, indent = true}))
	TriggerServerEvent("heyy_firefighter:" .. eventName, ...)
end

---Trigger a client-side event
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
