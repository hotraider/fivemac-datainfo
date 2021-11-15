
ESX =  nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)


ESX.RegisterServerCallback("fivemac-datalar", function(source, cb, note)

    local player = ESX.GetPlayerFromId(source)


    exports.ghmattimysql:execute('SELECT * FROM users WHERE identifier = @identifier', {
        ['@identifier'] = player.identifier


        
    }, function(results)
        cb(results)
    end)
    end)