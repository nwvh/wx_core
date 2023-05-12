local tazed = false
if wx.TaserEffect then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(100)
            
            if IsPedBeingStunned(PlayerPedId()) then
                
                SetPedToRagdoll(PlayerPedId(), 5000, 5000, 0, 0, 0, 0)
                
            end
            
            if IsPedBeingStunned(PlayerPedId()) and not tazed then
                
                tazed = true
                SetTimecycleModifier("REDMIST_blend")
                ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE", 1.0)
                
            elseif not IsPedBeingStunned(PlayerPedId()) and isTaz then
                tazed = false
                Wait(5000)
                
                SetTimecycleModifier("hud_def_desat_Trevor")
                
                Wait(10000)
                
                SetTimecycleModifier("")
                SetTransitionTimecycleModifier("")
                StopGameplayCamShaking()
            end
        end
    end)
end