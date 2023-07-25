-- anti-invisible (customize performance yourself);
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1);
    local playerPed = PlayerPedId();
    local playerAlpha = GetEntityAlpha(playerPed);
    local collectedData = {};
    local passedCheck = false;

    SetEntityAlpha(playerPed, 255);
    local newPlayerAlpha = GetEntityAlpha(playerPed);
    collectedData[source] = newPlayerAlpha;
    Citizen.Wait(50);
    SetEntityAlpha(playerPed, playerAlpha);

    if collectedData[source] ~= playerAlpha then
      passedCheck = true;
    end

    if not passedCheck then
      print('Ban / Anti-Invisible Detected');
    end
  end
end);

-- anti-godmode (customize performance yourself);
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1);
    local playerPed = PlayerPedId();
    local playerHealth = GetEntityHealth(playerPed);
    local collectedData = {};
    local passedCheck = false;

    SetEntityHealth(playerPed, 199);
    local newPlayerHealth = GetEntityHealth(playerPed);
    collectedData[source] = newPlayerHealth;
    Citizen.Wait(50);
    SetEntityHealth(playerPed, playerHealth);

    if collectedData[source] ~= playerHealth then
      passedCheck = true;
    end

    if not passedCheck then
      print('Ban / Anti-God-Mode Detected');
    end
  end
end);

-- anti-armour (customize performance yourself);
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1);
    local playerPed = PlayerPedId();
    local playerArmour = GetPedArmour(playerPed);
    local collectedData = {};
    local passedCheck = false;

    SetPedArmour(playerPed, 99);
    local newPlayerArmour = GetPedArmour(playerPed);
    collectedData[source] = newPlayerArmour;
    Citizen.Wait(50);
    SetPedArmour(playerPed, playerArmour);

    if collectedData[source] ~= playerArmour then
      passedCheck = true;
    end

    if not passedCheck then
      print('Ban / Anti-Armour Detected');
    end
  end
end);

