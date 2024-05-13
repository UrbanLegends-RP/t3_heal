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



local function CheckVersion()
	PerformHttpRequest('https://raw.githubusercontent.com/UrbanLegends-RP/t3_heal/main/t3_heal.txt', function(err, newestVersion, headers)
		local currentVersion = GetResourceMetadata(GetCurrentResourceName(), 'version')
		if not newestVersion then print("Currently unable to run a version check.") return end
		local advice = "^1You are currently running an outdated version^7, ^1please update^7"
		if newestVersion:gsub("%s+", "") == currentVersion:gsub("%s+", "") then advice = '^6You are running the latest version.^7'
		else print("^3Version Check^7: ^2Current^7: "..currentVersion.." ^2Latest^7: "..newestVersion) end
		print(advice)
	end)
end
CheckVersion()