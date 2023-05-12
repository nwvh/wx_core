if wx.enablePVP then
    Citizen.CreateThread(function()
        while true do
            Wait(1000)
            SetCanAttackFriendly(PlayerPedId(), true, false)
            NetworkSetFriendlyFireOption(true)
        end
    end)
end