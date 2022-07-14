local function StartingRoleplay()

    Citizen.CreateThread(function()
        for i = 1, 25 do
            EnableDispatchService(i,25)
        end

        for i = 0, 255 do 
            if NetworkIsPlayerConnected(i) then 
                if NetworkIsPlayerConnected(i) and GetPlayerPed(i) ~= nil then
                    SetCanAttackFriendly(GetPlayerPed(i), true, true)
                end
            end
        end
    end)

    Citizen.CreateThread(function()
        while true do 
            Wait(1000)
            local Player = PlayerId()
            SetPlayerWantedLevel(Player, 0 , false)
            SetPlayerWantedLevelNow(Player, false)
        end
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(1000)
            local pos = GetEntityCoords(PlayerPedId(), false)
            local dist = GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 2729.47, 1514.56, 23.7, false)
            if dist > 150.0 then 
                ClearAreaOfCops(pos, 400.0)
            else
                Wait(5000)
            end
        end
    end)
end

AddEventHandler('MP-Base:Start', function()
    StartingRoleplay()
end)
