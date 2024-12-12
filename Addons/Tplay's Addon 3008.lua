local Options = getgenv().Linoria.Options;
local Toggles = getgenv().Linoria.Toggles;

local Addon = {
    Name = "TplayAddonThreeZeroZeroEight",
    Title = "Tplay 3008",
    Game = "*",
    
    Elements = {
        {
            Type = "Label",
            Name = "Text",
            Arguments = {
                "Main"
            }
        },

        {
            Type = "Toggle",
            Name = "nofalldamage",
            Arguments = {
                Text = 'No Fall Damage',
                Default = false,

                Callback = function(value)
                    if value then
                        game.Players.LocalPlayer.Character.FallDamage.Enabled = false
                    else
                        game.Players.LocalPlayer.Character.FallDamage.Enabled = true
                    end
                end
            }
        },

        {
            Type = "Toggle",
            Name = "thirdperson",
            Arguments = {
                Text = 'Thirdperson',
                Default = false,

                Callback = function(value)
                    if value then
                        game.Players.LocalPlayer.CameraMaxZoomDistance = 6
                        game.Players.LocalPlayer.CameraMinZoomDistance = 6
                        game.Players.LocalPlayer.CameraMode = "Classic"
                    else
                        game.Players.LocalPlayer.CameraMaxZoomDistance = 0.5
                        game.Players.LocalPlayer.CameraMinZoomDistance = 0.5
                        game.Players.LocalPlayer.CameraMode = "LockFirstPerson"
                    end
                end
            }
        }
    }
}

return Addon;