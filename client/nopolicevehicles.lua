if wx.NoPoliceVehicles then
    Citizen.CreateThread(function()
        local SCENARIO_TYPES = {
            "WORLD_VEHICLE_MILITARY_PLANES_SMALL",
            "WORLD_VEHICLE_MILITARY_PLANES_BIG",
            'WORLD_VEHICLE_AMBULANCE',
            'WORLD_VEHICLE_POLICE_BIKE',
            'WORLD_VEHICLE_POLICE_CAR',
            'WORLD_VEHICLE_POLICE',
            'WORLD_VEHICLE_POLICE_NEXT_TO_CAR',
            'WORLD_VEHICLE_SECURITY_CAR',
        }
        local SCENARIO_GROUPS = {
            2017590552,
            2141866469,
            1409640232,
            "ng_planes",
        }
        local SUPPRESSED_MODELS = {
            "SHAMAL",
            "LUXOR",
            "LUXOR2",
            "JET",
            "LAZER",
            "TITAN",
            "BARRACKS",
            "BARRACKS2",
            "CRUSADER",
            "MARSHALL",
            "LIBERATOR",
            "RHINO",
            "AIRTUG",
            "RIPLEY",
            "BLIMP",
            "BLIMP2",
            "BUZZARD2",
            "FROGGER",
            "POLMAV",
            "BLIMP3",
            "DUSTER",
        }
        while true do
            Wait(1000)
            for _,sctyp in next,SCENARIO_TYPES do
                SetScenarioTypeEnabled(sctyp,false)
            end
            for _,scgrp in next,SCENARIO_GROUPS do
                SetScenarioGroupEnabled(scgrp,false)
            end
            for _,model in next,SUPPRESSED_MODELS do
                SetVehicleModelIsSuppressed(GetHashKey(model),true)
            end
            Wait(10000)
        end
    end)
end