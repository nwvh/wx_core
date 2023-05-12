if wx.NoMelee then
    Citizen.CreateThread(function()
        while true do
            N_0x4757f00bc6323cfe(GetHashKey("WEAPON_NIGHTSTICK"), 0.1) 
            Wait(0)
            N_0x4757f00bc6323cfe(GetHashKey("WEAPON_BAT"), 0.23)
            Wait(0)
            N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), 0.23)
            Wait(0)
            N_0x4757f00bc6323cfe(GetHashKey("WEAPON_HAMMER"), 0.23)
            Wait(0)
            N_0x4757f00bc6323cfe(GetHashKey("WEAPON_GOLFCLUB "), 0.23)
            Wait(0)
            N_0x4757f00bc6323cfe(GetHashKey("WEAPON_CROWBAR"), 0.23)
            Wait(0)
        end
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
        local ped = PlayerPedId()
            if IsPedArmed(ped, 6) then
            DisableControlAction(1, 140, true)
            DisableControlAction(1, 141, true)
            DisableControlAction(1, 142, true)
            end
        end
    end)
end
