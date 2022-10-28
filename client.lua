ESX = exports["es_extended"]:getSharedObject()
RegisterCommand('coords', function(source, args, rawCommand)
	local coords = GetEntityCoords(PlayerPedId())
	local xcoords =	ESX.Math.Round(coords.x, 2)
	local ycoords = ESX.Math.Round(coords.y, 2)
	local zcoords = ESX.Math.Round(coords.z, 2)

	SendNUIMessage({
		coords = ""..xcoords..","..ycoords..","..zcoords..""
	})
end)

RegisterCommand('coordsh', function(source, args, rawCommand)
	local heading = ESX.Math.Round(GetEntityHeading(PlayerPedId()),2)
	
	SendNUIMessage({
		coords = ""..heading..""
	})
end)