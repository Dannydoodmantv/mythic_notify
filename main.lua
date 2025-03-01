
function SendAlert(type, text, length, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = 2500,
		style = style
	})
end

function SendLongAlert(type, text, length, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = 5000,
		style = style
	})
end

function SendShortAlert(type, text, length, style)
	SendNUIMessage({
		type = type,
		text = text,
		length = 1000,
		style = style
	})
end

RegisterNetEvent('mythic_notify:client:SendAlert')
AddEventHandler('mythic_notify:client:SendAlert', function(data)
	SendAlert(data.type, data.text, data.length, data.style)
end)

