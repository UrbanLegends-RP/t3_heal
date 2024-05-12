local QBCore = exports['qb-core']:GetCoreObject()

-- Key press event listener
CreateThread(function()
    while true do
        Wait(0)
        local playerCoords = GetEntityCoords(PlayerPedId())

        for _, checkIn in ipairs(Config.HospitalCheckIns) do
            if #(playerCoords - checkIn) < 5 then
                DrawText3Ds(checkIn.x, checkIn.y, checkIn.z, "[E] Check in for revival ($200)")

                if IsControlJustReleased(0, 38) then -- E key
                    TriggerServerEvent('t3_heal:revivePlayer')
                    break  -- Ensures that the prompt only appears for the closest check-in spot
                end
            end
        end
    end
end)

function DrawText3Ds(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local p = GetGameplayCamCoords()
    local distance = GetDistanceBetweenCoords(p.x, p.y, p.z, x, y, z, 1)
    local scale = (1 / distance) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    scale = scale * fov
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x, _y)
end
