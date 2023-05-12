Citizen.CreateThread(function()
    while true do
        Wait(0)
        SetPedDensityMultiplierThisFrame(wx.NPCFrequency)
        SetScenarioPedDensityMultiplierThisFrame(wx.NPCFrequency, wx.NPCFrequency)
        SetRandomVehicleDensityMultiplierThisFrame(wx.TrafficFrequency)
        SetParkedVehicleDensityMultiplierThisFrame(wx.TrafficFrequency)
        SetVehicleDensityMultiplierThisFrame(wx.TrafficFrequency)
    end
end)