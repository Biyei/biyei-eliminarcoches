--------------------------------------
------Created By Biyei------
--https://github.com/biyei--
--------------------------------------
RegisterNetEvent("biyei:eliminarcoches")
AddEventHandler("biyei:eliminarcoches", function ()
    TriggerEvent("chatMessage", "^7[^5Anuncio^7] ^7En 30 segundos todos los vehiculos vacios seran remolcados.")
    Citizen.Wait(20000)
    TriggerEvent("chatMessage", "^7[^5Anuncio^7] ^7En 10 segundos todos los vehiculos vacios seran remolcados.")
    Citizen.Wait(5000)
    TriggerEvent("chatMessage", "^7[^5Anuncio^7] ^7En 5 segundos todos los vehiculos vacios seran remolcados.")
    Citizen.Wait(1000)
    TriggerEvent("chatMessage", "^7[^5Anuncio^7] ^7En 4 segundos todos los vehiculos vacios seran remolcados.")
    Citizen.Wait(1000)
    TriggerEvent("chatMessage", "^7[^5Anuncio^7] ^7En 3 segundos todos los vehiculos vacios seran remolcados.")
    Citizen.Wait(1000)
    TriggerEvent("chatMessage", "^7[^5Anuncio^7] ^7En 2 segundos todos los vehiculos vacios seran remolcados.")
    Citizen.Wait(1000)
    TriggerEvent("chatMessage", "^7[^5Anuncio^7] ^7En 1 segundos todos los vehiculos vacios seran remolcados.")
    Citizen.Wait(1000)
    for vehicle in EnumerateVehicles() do
        if (not IsPedAPlayer(GetPedInVehicleSeat(vehicle, -1))) then 
            SetVehicleHasBeenOwnedByPlayer(vehicle, false) 
            SetEntityAsMissionEntity(vehicle, false, false) 
            DeleteVehicle(vehicle)
            if (DoesEntityExist(vehicle)) then 
                DeleteVehicle(vehicle) 
            end
        end
    end
end)