RegisterNetEvent('alzhe:fix')
AddEventHandler('alzhe:fix', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 1000)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleFixed(vehicle)
		SetVehicleDirtLevel(vehicle, 0)
		notification("~g~Véhicule comme neuf !")
	else
		notification("~r~Vous devez être dans un véhicule.")
	end
end)

RegisterNetEvent('alzhe:noPerms')
AddEventHandler('alzhe:noPerms', function()
	notification("~r~Erreur: aucune permission.")
end)

function notification(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(false, false)
end

RegisterNetEvent('alzhe:destroy')
AddEventHandler('alzhe:destroy', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 250)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleDirtLevel(vehicle, 15)
		notification("~g~Véhicule détruit.")
	else
		notification("~r~Vous devez être dans un véhicule.")
	end
end)
RegisterNetEvent('alzhe:fixnf')
AddEventHandler('alzhe:fixnf', function()
	local playerPed = GetPlayerPed(-1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleEngineHealth(vehicle, 1000)
		SetVehicleEngineOn( vehicle, true, true )
		SetVehicleDirtLevel(vehicle, 0)
		SetVehicleFixed(vehicle)
		notification("~g~Véhicule théoriquement réparé.")
	else
		notification("~r~Vous devez être dans un véhicule.")
	end
end)