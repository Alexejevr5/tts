function Notify(type, text, icon, time, color, speak)
	SendNUIMessage({
        type = type, 
        text = text, 
        icon = icon, 
        time = time, 
        color = color,
        speak = speak,
	})
end

RegisterNetEvent('Rovelt:Notify')
AddEventHandler('Rovelt:Notify', function(type, text, icon, time, color, tts)
	Notify(type, text, icon, time, color, tts)
end)


-- HOW TO USE
-- TYPES (danger, info, success, warning)
-- Icons can be found at https://fontawesome.com/v4/icons/
-- Colors can be found with hexfinder (https://g.co/kgs/GKkSNY)
-- tts is if you want an AI reading the message
-- exports['tts']:Notify(type, text, icon, time, color, tts (SPEAKING))


-- This is an example:
-- exports['tts']:Notify("warning", "This is with my own colors, icon, and time", "fa fa-battery-full", 60, "#02152e", false)

-- if you want to use it as an event:
-- TriggerClientEvent("Rovelt:Notify", source, type, text, icon, time, color, tts)
-- This is an example: 
