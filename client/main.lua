local QBCore = exports['qb-core']:GetCoreObject()
local playerData = QBCore.Functions.GetPlayerData()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000)
        local ped = PlayerPedId()
        if IsPedInAnyVehicle(ped, false) then
            SetUserRadioControlEnabled(false)
            if GetPlayerRadioStationName() ~= nil then
                SetVehRadioStation(GetVehiclePedIsIn(PlayerPedId()),"OFF")
            end
        end
    end
end)