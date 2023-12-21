
local isNearelevator = false

Citizen.CreateThread(function ()
    while true do
        
        if isNearelevator then
            
            showInfobar('Drücke ~g~E~s~. um Fahrstuhl zu fahren')

        end

        Citizen.Wait(1)
    end
    
end)

Citizen.CreateThread(function ()
    while true do
        local test = GetEntityCoords(PlayerPedId())

        for k, v in pairs(Config.Elevator) do
            local dist = Vdist(playerCoords, v[1], v[2], v[3])
        if dist < 1.5 then
            isNearelevator = true
        
        end
    end
    
    
    Citizen.Wait(300)
    end
    
end)

function showInfobar(text)

SetTextComponentFormat('STRING')
AddTextComponentString(text)
EndTextCommandDisplayHelp(0, 0, 1, -1)
end










-- teleport function

function teleport()

end

