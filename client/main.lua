local QBCore = exports['qb-core']:GetCoreObject()

RegisterCommand("stealshoes", function()
    TriggerEvent('tnj-stealshoes:client:TheftShoe')
end)

RegisterNetEvent('tnj-stealshoes:client:TheftShoe', function() -- This could be used in the radialmenu ;)
    local ped = PlayerPedId()
    if not IsPedRagdoll(ped) then
        local player, distance = QBCore.Functions.GetClosestPlayer()
        if player ~= -1 and distance < 1.5 then
            local playerId = GetPlayerServerId(player)
            if not IsPedInAnyVehicle(GetPlayerPed(player)) and not IsPedInAnyVehicle(ped) then
                local oped = GetPlayerPed(player)
                local hasShoes = GetPedDrawableVariation(oped, 6)
                if hasShoes ~= 34 then
                    while not HasAnimDictLoaded("random@domestic") do
                        RequestAnimDict("random@domestic")
                        Wait(1)
                    end
                    TaskPlayAnim(ped, "random@domestic", "pickup_low", 8.00, -8.00, 500, 0, 0.00, 0, 0, 0)
                    TriggerServerEvent("tnj-stealshoes:server:TheftShoe", playerId)
                    SetPedComponentVariation(oped, 6, 34, 0, 2)
                else
                    QBCore.Functions.Notify("No shoes to been stolen!", "error")
                end
            else
                QBCore.Functions.Notify('You can\'t steal shoes in vehicle', "error")
            end
        else
            QBCore.Functions.Notify('No one nearby!', "error")
        end
    end
end)

RegisterNetEvent('tnj-stealshoes:client:StoleShoe', function(playerId)
    local ped = PlayerPedId()
    local hasShoes = GetPedDrawableVariation(ped, 6)
    if hasShoes ~= 45 then
        SetPedComponentVariation(ped, 6, 45, 0, 2)
        QBCore.Functions.Notify("Shoes got robbed lmao", 'primary')
        TriggerServerEvent("tnj-stealshoes:server:Complete", playerId)
    else
        QBCore.Functions.Notify("Someone tried to steal yo feet", 'primary')
    end
end)

if Config.QBTarget then
    exports['qb-target']:AddGlobalPlayer {
        options = {
            {
                type = "command",
                event = "stealshoes",
                icon = "fas fa-hands",
                label = "Steel Shoes",
            }
        },
        distance = 2.5,
    }
end
