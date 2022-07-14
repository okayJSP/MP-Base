# Main Power
Main Power is a FiveM Framework built for a roleplay stance, this doesn't mean it cannot be used for other things creativity is free and do what you enjoy create what you would like.

## Documentation 
Calling "MP" a simple thing done with an export shown here:
local MP = exports['MP-Base']:GetObject()
This allows you to use MP. in any script that you would need to call it.

**Client Side Functions**

MP.Functions.GetKey = function(key) - Allows you to get a key # varible with just typing what the key would be for and ex:
MP.Functions.GetKey('f2') would return with 288 

MP.Functions.DeleteVehicle = function(vehicle) - Allows you to remove a vehicle when called with the function [Mainly used for admin commands]

MP.Functions.GetVehicleDirection = function() - Allows you to get a vehicle in the direction your character is facing useing raytracing. Overall will be used for police and criminal activitys based with vehicles.

MP.Functions.DeleteObject = function(obj) - Just like the vehicle this will delete and object that has been selected for deletion. 

MP.Functions.GetClosestPlayer = function(coords) - Allows you to get the closest player to your location.

**Server Side Functions**

MP.Functions.CreatePlayer = function(source, Data) - Creating a player which will insert them into a sql database.

MP.Functions.LoadPlayer = function(source, pData, cid) - Loading the player correctly based off of the slot chosen.

MP.Functions.addCommand = function(command, callback, suggestion, args) - Allows you to create a command based off the function as seen in the Commands folder.

MP.Functions.addGroupCommand = function(command, group, callback, callbackfailed, suggestion, arguments) -Allows you to create a group command based off the function as seen in the Commands folder.

MP.Functions.setupAdmin = function(player, group) - Setup for admin permissions where it adds you into a sql file storing who is admin and not.

MP.Functions.BuildCommands = function(source) - Builds commands when people join the server to ensure they have all the suggestions if needed.

MP.Functions.ClearCommands = function(source) - Clears all command suggestions [used if bugged]

MP.Functions.getPlayer = function(source) - Used to get information about the player including job and such.

MP.Functions.AdminPlayer = function(source) - Used to get information if the player is an admin.

MP.Player.LoadData = function(source, identifier, cid) - Loading the data of a player and putting it into self functions for when you call MP.Players will have all the information.

**Gameplay** 
StartingRoleplay() - A function that starts off when people join the server. This ensures there are no NPC cops as well as basic things like PVP are enabled.

**New Players**

MP.NewCharacter = {
    Cash = 600,
    Bank = 5500,
}

Ensures that cash and bank when a new player is joining for created. Will have this amount of cash as well as money in the bank.

**UserGroups**
MP.UserGroups - Starting off with the base 'user' basically having no permissions at all for other commands
'mod' would be up to the owner on what permissions they would want.
'admin' would be up to the owner on what permissions they would want. defaulted they would have 90% of all permissions inside of the server
'dev' defaulted will have 100% of every permission on the server as allows for easy fixes.

## Credits
https://www.youtube.com/channel/UC6Q_GHVQvtZFn0_nmh7Zw7w All code shown in youtube here
