local RedKeyRun = RegisterMod("Red Key Run", 1)

function RedKeyRun:addKey()
    Isaac.Spawn(EntityType.ENTITY_PICKUP, PickupVariant.PICKUP_COLLECTIBLE,580, Game():GetRoom():FindFreePickupSpawnPosition(Game():GetRoom():GetCenterPos(), 0, true), Vector(0,0), nil);
end

RedKeyRun:AddCallback(ModCallbacks.MC_POST_NEW_LEVEL, RedKeyRun.addKey)
