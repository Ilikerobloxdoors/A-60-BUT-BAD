local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "ARXS-60XMB",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/A-60-BUT-BAD/main/A-60%20BUT%20BAD.rbxm",

    Speed = 835,
    DelayTime = 2.9,
    HeightOffset = 0,

    CanKill = true,
    KillRange = 15,

    BreakLights = false,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        1.3,
    },

    Cycles = {
        Min = 7,
        Max = 17,
        WaitTime = 0.2,
    },

    CamShake = {
        true,
        {40, 70, 0.1, 0.4},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://11710147805",
            Image2 = "rbxassetid://11710147805",

            Shake = true,

            -- Default Sound1
            Sound1 = {
                10483790459,
                {Volume = 0.5},
            },

            Sound2 = {
                114342167442853,
                {Volume = 0.5},
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 0, 0),
            },

            Tease = {
                true,
                Min = 2,
                Max = 4,
            },
        },
    },

    CustomDialog = {
        "You died to ARXS-60XMB...",
        "It was moving at an impossible speed.",
        "You should have hidden."
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("ARXS-60XMB has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("ARXS-60XMB has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("ARXS-60XMB has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("ARXS-60XMB has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print(
        "ARXS-60XMB entered room:",
        room
    )
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print(
        "Player looked at ARXS-60XMB:",
        entityTable.Model
    )
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to ARXS-60XMB.")
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
