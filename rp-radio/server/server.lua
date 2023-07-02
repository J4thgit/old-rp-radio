ESX = nil
local ESX = exports['es_extended']:getSharedObject()

ESX.RegisterUsableItem('radio', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('Radio.Set', source, true)
	TriggerClientEvent('Radio.Toggle', source)
end)

ESX.RegisterServerCallback('rpradio:checkItem', function(source, cb)
    local item = exports.ox_inventory:GetItem(source, 'radio', nil, false)
    if item.count >= 1 then
        verif = true
    else
        verif = false
    end
	cb(verif)
end)