--[[
─────────────────────────────────────────────────────────────────

	ShotSpotter (server.lua) - Created by ItzEndah
	Current Version: 1.0.2 (June 2021)
	
	Support - ItzEndah#0001 on Discord
	
	For the configuration, change the values in the config.lua
	DO NOT EDIT THIS FILE IF YOU DON'T KNOW WHAT YOU ARE DOING	

─────────────────────────────────────────────────────────────────
]]--

RegisterServerEvent('inProgress1S')
AddEventHandler('inProgress1S', function(street1)
	TriggerClientEvent("gunshotNotify", -1, "~r~[ShotSpotter] ~w~Gunshot detected: ~y~"..street1)
end)

RegisterServerEvent('inProgress2S')
AddEventHandler('inProgress2S', function(street1, street2)
	TriggerClientEvent("gunshotNotify", -1, "~r~[ShotSpotter] ~w~Gunshot detected: ~y~"..street1.." ~w~/ ~y~"..street2)
end)

RegisterServerEvent('inProgressBlip')
AddEventHandler('inProgressBlip', function(gx, gy, gz)
	TriggerClientEvent("gunshotLocation", -1, gx, gy, gz)
end)
