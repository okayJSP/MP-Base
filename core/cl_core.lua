function MP.Base.Start(self)
    Citizen.CreateThread(function()
        while true do
            if NetworkIsSessionStarted() then 
                TriggerEvent('MP-Base:Start')
                TriggerServerEvent('MP-Base:ServerStart')
                break
            end
        end
    end)
end
MP.Base.Start(self)


-- EXPORT
-- RegisterNetEvent('MP-Base:client:getObject')
-- AddEventHandler('MP-Base:client:getObject', function(callback)
--     callback(MP)
--     print('Called Back ' .. MP .. '')
-- end)

exports('MP-GetObject', function()
    return MP
end)

-- local MP = exports['MP-Base']:MP-GetObject()

-- ADMIN 
RegisterNetEvent("MP-Admin:updateGroup")
AddEventHandler("MP-Admin:updateGroup", function(group)
	MP.PlayerData.UserGroups = group
end)
