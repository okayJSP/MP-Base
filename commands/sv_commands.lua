TriggerEvent('MP-Base:addGroupCommand', 'setgroup', 'admin', function(source,args,user)
    local target = tonumber(args[1]) -- player id in game
    local group = tostring(args[2]) -- group [admin,mod,dev] 
    local player = MP.Functions.getPlayer(target)
    if target ~= nil then 
        if player then 
            if MP.UserGroups[group] then
                MP.Functions.setGroup(player, group)
                -- Add Notification set properly
            else
                -- Add Notification wrong user group
            end
        else
            -- Add Notification for no player
        end
    end
end, function(source, args,user)
    -- Add Notification for no permission
end)

TriggerEvent('MP-Base:addGroupCommand', 'console', 'admin', function(source, args, user)
    local msg = args[1] -- "fsjsdjfhjksdh kfdshdkfsh"
    TriggerClientEvent("chatMessage", -1, "CONSOLE: " .. message, 3 )
end, function(source, args, user)
    -- Add Notification for no permission
end)

-- prio 

TriggerEvent('MP-Base:addGroupCommand', 'EditPrio', 'admin', function(source,args, user)
    local Player = MP.Functions.getPlayer(tonumber(args[1]))
    local level = tonumber(args[2]) -- # amount
    if Player ~= nil then 
        UpdatePriority(tonumber(args[1]), level)
        -- Add Notification to source
    else 
        -- Add Notification with no player
    end
end)

TriggerEvent('MP-Base:addGroupCommand', 'CheckPrio', 'admin', function(source,args,user)
    local src = source 
    local Player = MP.Functions.getPlayer(tonumber(args[1]))
    exports['ghmattimysql']:execute("SELECT * FROM `queue` WHERE `steam` = '"..GetPlayerIdentifiers(tonumber(args[1]))[1].."'", function(result)
		if result[1] ~= nil then 
			local prio = result[1].priority
			TriggerClientEvent("chatMessage", source, "Their Priortiy = ", 3, prio )
		end
	end)
end)

function UpdatePriority(source, level)
    local Player = MP.Functions.getPlayer(source)
    if Player ~= nil then
        exports['ghmattimysql']:execute("DELETE FROM `queue` WHERE `steam` = '"..GetPlayerIdentifiers(source)[1].."'")
		Citizen.Wait(100)
		exports['ghmattimysql']:execute("INSERT INTO `queue` (`steam`, `priority`) VALUES ('"..GetPlayerIdentifiers(source)[1].."', '"..level.."')")
    end 
end

TriggerEvent('MP-Base:addCommand', 'ooc', function(source, args)
    local msg = table.concat(args, ' ')
    local Player = MP.Functions.getPlayer(source)
    local id = Player.Data.PlayerId
    local first = Player.Data.firstname
    local last = Player.Data.lastname
    local full = ('|' .. id .. '| ' .. first .. ' ' .. last .. ' ')
    TriggerClientEvent('chatMessage', -1, 'OOC: ' .. full .. ' ',2, msg)
end)