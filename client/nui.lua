
ESX =  nil
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterCommand("data", function(source, args)
    SetDisplay(true, true)
end)


RegisterNUICallback('exit', function()
    SetNuiFocus(false, false)
  end)


  local display = false

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "ui",
        status = bool,
    })
end


RegisterNUICallback('fivemac-datacheck', function(data, cb)
    ESX.TriggerServerCallback("fivemac-datalar", function(result)
        cb(result)
    end)
end)
