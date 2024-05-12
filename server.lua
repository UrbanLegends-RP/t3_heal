local QBCore = exports['qb-core']:GetCoreObject()

RegisterServerEvent('t3_heal:revivePlayer')
AddEventHandler('t3_heal:revivePlayer', function()
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)

    if Player.PlayerData.money.cash >= 200 then
        Player.Functions.RemoveMoney('cash', 200)
        TriggerClientEvent('hospital:client:Revive', src)
        TriggerClientEvent('QBCore:Notify', src, 'You have been revived.', 'success')
    else
        TriggerClientEvent('QBCore:Notify', src, 'Not enough money.', 'error')
    end
end)
