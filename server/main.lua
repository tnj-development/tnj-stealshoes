local QBCore = exports['qb-core']:GetCoreObject()

RegisterNetEvent('tnj-stealshoes:server:TheftShoe', function(playerId)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local Receiver = QBCore.Functions.GetPlayer(playerId)
    if Receiver then 
        TriggerClientEvent("tnj-stealshoes:client:StoleShoe", Receiver.PlayerData.source, Player.PlayerData.source)
    end
end)

RegisterNetEvent("tnj-stealshoes:server:Complete", function(playerId)
    local source = source
    local Player = QBCore.Functions.GetPlayer(source)
    local Receiver = QBCore.Functions.GetPlayer(playerId)
    if Receiver then
        Receiver.Functions.AddItem("weapon_shoe", 1)
        TriggerClientEvent('inventory:client:ItemBox', Receiver.PlayerData.source, QBCore.Shared.Items["weapon_shoe"], 'add')
    end
end)