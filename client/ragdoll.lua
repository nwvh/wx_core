if wx.Ragdoll then
    local ragdoll = false
    local activeRag = {}
    local playerPed = PlayerPedId()
    function setRagdoll(flag)
    ragdoll = flag
    end
    Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if ragdoll then
        SetPedToRagdoll(GetPlayerPed(-1), 1000, 1000, 0, 0, 0, 0)
        end
    end
    end)

    ragdol = true
    RegisterNetEvent("Ragdoll")
    AddEventHandler("Ragdoll", function()
        if ( ragdol ) then
            setRagdoll(true)
            ragdol = false
        else
            setRagdoll(false)
            ragdol = true
        end
    end)

    RegisterCommand(wx.RagdollCommand, function(source, args, raw)
    if not activeRag[source] then
        TriggerEvent("Ragdoll")
        SetCurrentPedWeapon(playerPed, GetHashKey('WEAPON_UNARMED'), true)
        activeRag[source] = true
        Wait(6000)
        activeRag[source] = false 

    end
    end, false)
end