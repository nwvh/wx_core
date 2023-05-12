if wx.NoTrains then
    Citizen.CreateThread(function()
        while true do
            Wait(10)
            SwitchTrainTrack(0, true) 
            SwitchTrainTrack(3, true)   
            SetRandomTrains(1)
        end
    end)
end