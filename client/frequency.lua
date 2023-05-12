Citizen.CreateThread(function()
    while true do
        Wait(1500)
        SetPedDensityMultiplierThisFrame(wx.NPCFrequency)
        SetScenarioPedDensityMultiplierThisFrame(wx.NPCFrequency, wx.NPCFrequency)
        SetRandomVehicleDensityMultiplierThisFrame(wx.TrafficFrequency)
        SetParkedVehicleDensityMultiplierThisFrame(wx.TrafficFrequency)
        SetVehicleDensityMultiplierThisFrame(wx.TrafficFrequency)
    end
end)