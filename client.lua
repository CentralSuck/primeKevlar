ESX = nil
Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent('primeKevlar:lightbproof')
AddEventHandler('primeKevlar:lightbproof', function()

    local playerPed = PlayerPedId()
    local lib = 'clothingtie'
    local anim = 'try_tie_neutral_a'
    ESX.Streaming.RequestAnimDict(lib, function()
        TaskPlayAnim(playerPed, lib, anim, 8.0, 1.0, -1, 49, 0, false, false, false)
        RemoveAnimDict(lib)
    end)
    Citizen.Wait(1000)
    ClearPedTasks(playerPed)

    AddArmourToPed(playerPed, 50)
    TriggerEvent('skinchanger:change', 'bproof_1', 2)

end)

RegisterNetEvent('primeKevlar:heavybproof')
AddEventHandler('primeKevlar:heavybproof', function()

    local playerPed = PlayerPedId()
    local lib = 'clothingtie'
    local anim = 'try_tie_neutral_a'
    ESX.Streaming.RequestAnimDict(lib, function()
        TaskPlayAnim(playerPed, lib, anim, 8.0, 1.0, -1, 49, 0, false, false, false)
        RemoveAnimDict(lib)
    end)
    Citizen.Wait(1000)
    ClearPedTasks(playerPed)

    AddArmourToPed(playerPed, 100)
    TriggerEvent('skinchanger:change', 'bproof_1', 2)

end)