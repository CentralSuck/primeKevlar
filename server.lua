local ESX = nil
TriggerEvent('esx:getSharedObject', function(obj)
    ESX = obj
end)

ESX.RegisterUsableItem('light_bproof', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('light_bproof', 1)
    TriggerClientEvent('primeKevlar:lightbproof', source)
end)

ESX.RegisterUsableItem('heavy_bproof', function(source)

    local xPlayer = ESX.GetPlayerFromId(source)

    xPlayer.removeInventoryItem('heavy_bproof', 1)
    TriggerClientEvent('primeKevlar:heavybproof', source)
end)