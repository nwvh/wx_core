if wx.NoMelee then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(10)
        local ped = PlayerPedId()
            if IsPedArmed(ped, 6) then
            DisableControlAction(1, 140, true)
            DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
            end
        end
    end)
end
