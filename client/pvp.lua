if wx.enablePVP then
    Citizen.CreateThread(function()
        while true do
            Wait(0)
            SetCanAttackFriendly(GetPlayerPed(-1), true, false)
            NetworkSetFriendlyFireOption(true)
        end
    end)
end