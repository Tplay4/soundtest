local Options = getgenv().Linoria.Options;
local Toggles = getgenv().Linoria.Toggles;

local Players = {}

for _,v in ipairs(game:GetService("Players"):GetChildren()) do
    if v.Name == game.Players.LocalPlayer.Name == false then
        table.insert(Players, v.Name)
    end
end

local Addon = {
    Name = "TplayAddonDoors",
    Title = "Tplay Doors",
    Game = {
        "doors/doors"
    },
    
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
            Name = "NoWardrobeVignette",
            Arguments = {
                Text = 'No Wardrobe Vignette',
                Tooltip = 'Disables Vignette when you hiding in Wardrobe',
                Default = false,

                Callback = function(value)
                    local vignette = game:GetService("Players").LocalPlayer.PlayerGui.MainUI.MainFrame.HideVignette

                    if value then
                        vignette.Size = UDim2.new(0, 0, 0, 0)
                    else
                        vignette.Size = UDim2.new(1, 0, 1, 0)
                    end
                end
            }
        },

        {
            Type = "Toggle",
            Name = "RemoveAmbience",
            Arguments = {
                Text = 'No Ambience',
                Tooltip = 'Disables Ambience (Random Ambience, Hotel/Mines Ambience, Dark Ambience)',
                Default = false,

                Callback = function(value)
                    if not game.SoundService:FindFirstChild("AmbienceRemove") then
                        local ambiencerem = Instance.new("BoolValue")
                        ambiencerem.Name = "AmbienceRemove"
                        ambiencerem.Parent = game.SoundService
                    end
                    if value then
                        workspace.Ambience_Dark.Volume = 0
                        if workspace:FindFirstChild("AmbienceMines") then
                            workspace.AmbienceMines.Volume = 0
                        else
                            workspace.Ambience_Hotel.Volume = 0
                            workspace.Ambience_Hotel2.Volume = 0
                            workspace.Ambience_Hotel3.Volume = 0
                        end
                        game.SoundService.AmbienceRemove.Value = true
                        task.wait()
                        repeat if workspace.Terrain:FindFirstChildWhichIsA("Attachment") then workspace.Terrain:FindFirstChildWhichIsA("Attachment"):remove() end task.wait(0.01) until game.SoundService.AmbienceRemove.Value == false
                    else
                        workspace.Ambience_Dark.Volume = 0.6
                        if workspace:FindFirstChild("AmbienceMines") then
                            workspace.AmbienceMines.Volume = 0.4
                        else
                            workspace.Ambience_Hotel.Volume = 0.2
                            workspace.Ambience_Hotel2.Volume = 0.3
                            workspace.Ambience_Hotel3.Volume = 0.05
                        end
                        game.SoundService.AmbienceRemove.Value = false
                    end
                end
            }
        },

        {
            Type = "Divider",
        },

        {
            Type = "Label",
            Name = "Text",
            Arguments = {
                "Troll"
            }
        },

        {
            Type = "Toggle",
            Name = "Stun",
            Arguments = {
                Text = 'Stun',
                Tooltip = 'Enable to Stun',
                Enabled = false,

                Callback = function(value)
                    local cfcfcf = game.Players.LocalPlayer
                    
                    if value then
                        cfcfcf.Character:SetAttribute('Stunned', true)
                    else
                        cfcfcf.Character:SetAttribute('Stunned', false)
                    end
                end
            }
        },

        {
            Type = "Toggle",
            Name = "NoAnimation",
            Arguments = {
                Text = 'No Animation',
                Tooltip = 'Disables Animation (not work for solara or executor that not support require)',
                Enabled = false,

                Callback = function(value)
                    local addonf0 = game.Players.LocalPlayer.PlayerGui
                    local addonf1 = addonf0:WaitForChild("MainUI")
                    local addonf2 = addonf1:WaitForChild("Initiator"):WaitForChild("Main_Game")
                    local addonf3 = require(addonf2)
                        
                    if value then
                        addonf3.disableMovement = true
                    else
                        addonf3.disableMovement = false
                    end
                end
            }
        },
    
        {
            Type = "Toggle",
            Name = "ThinkingAnimation",
            Arguments = {
                Text = 'Thinking Animation',
                Tooltip = 'Enables random thinking animation',
                Enabled = false,

                Callback = function(value)
                    local lplr = game.Players.LocalPlayer
                    
                    local thinkanims = {"18885101321", "18885098453", "18885095182"}
                    
                    if value then
                        local animation = Instance.new("Animation")
                        animation.AnimationId = "rbxassetid://" .. thinkanims[math.random(1, #thinkanims)]
                        animtrack = lplr.Character:FindFirstChildWhichIsA("Humanoid"):LoadAnimation(animation)
                        animtrack.Looped = true
                        animtrack:Play()
                    else
                        if animtrack then
                            animtrack:Stop()
                            animtrack:Destroy()
                        end
                    end
                end
            }
        },

        {
            Type = "Divider",
        },

        {
            Type = "Label",
            Name = "Text",
            Arguments = {
                "Figure (need alarm clock)"
            }
        },

        {
            Type = "Button",
            Name = "stopfigureenable",
            Arguments = {
                Text = 'Stop Figure (Enable)',
                Tooltip = 'Stopping Figure',

                Func = function(value)
                    if not _G.Enabled675 then
                        _G.Enabled675 = false
                    end
                    local crooms = workspace.CurrentRooms
                    local croom = game.Players.LocalPlayer:GetAttribute("CurrentRoom")
                    local room = crooms[croom]
                    if _G.Enabled675 == false then
                        if room.FigureSetup.FigureRig:FindFirstChild("Root") then
                            _G.Enabled675 = true
                            local figure = room.FigureSetup.FigureRig
                            local BodyPos = Instance.new("BodyPosition")
                            BodyPos.Parent = figure.Root
                            BodyPos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                            BodyPos.Position = figure.Root.Position
                        else
                            getgenv().Library:Notify("Figure not found", 3)
                        end
                    end
                end
            }
        },

        {
            Type = "Button",
            Name = "stopfiguredisable",
            Arguments = {
                Text = 'Stop Figure (Disable)',

                Func = function(value)
                    local crooms = workspace.CurrentRooms
                    local croom = game.Players.LocalPlayer:GetAttribute("CurrentRoom")
                    local room = crooms[croom]
                    if _G.Enabled675 == true then
                        if room.FigureSetup.FigureRig:FindFirstChild("Root") then
                            _G.Enabled675 = false
                            local figure = room.FigureSetup.FigureRig
                            if figure.Root:FindFirstChildWhichIsA("BodyPosition") then
                                figure.Root:FindFirstChildWhichIsA("BodyPosition"):remove()
                            end
                        else
                            _G.Enabled675 = false
                        end
                    end
                end
            }
        },

        {
            Type = "Button",
            Name = "figurecontrolenable",
            Arguments = {
                Text = 'Figure Control (Enable)',
                Tooltip = 'Figure following you',

                Func = function(value)
                    if not _G.Controlling then
                        _G.Controlling = false
                    end
                    local locplr = game.Players.LocalPlayer
                    local crooms = workspace.CurrentRooms
                    local croom = locplr:GetAttribute("CurrentRoom")
                    local room = crooms[croom]
                    if _G.Controlling == false then
                        if room.FigureSetup.FigureRig:FindFirstChild("Root") then
                            _G.Controlling = true
                            locplr.Character.Humanoid.HipHeight = 20
                            local ctrlpart = Instance.new("Part")
                            local weld = Instance.new("Weld")
                            local figure = room.FigureSetup.FigureRig
                            local controlpos = Instance.new("BodyPosition")
                            ctrlpart.Parent = locplr.Character
                            ctrlpart.CanCollide = false
                            ctrlpart.Transparency = 1
                            ctrlpart.Name = "ControlPart"
                            weld.Parent = ctrlpart
                            weld.Part0 = locplr.Character.ControlPart
                            weld.Part1 = locplr.Character.HumanoidRootPart
                            weld.C1 = CFrame.new(Vector3.new(0, -17, 0))
                            controlpos.Name = "Control"
                            controlpos.Parent = figure.Root
                            controlpos.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                            repeat controlpos.Position = ctrlpart.Position task.wait(0.03) until _G.Controlling == false
                        else
                            getgenv().Library:Notify("Figure not found", 3)
                        end
                    end
                end
            }
        },

        {
            Type = "Button",
            Name = "figurecontroldisable",
            Arguments = {
                Text = 'Figure Control (Disable)',

                Func = function(value)
                    local locplr = game.Players.LocalPlayer
                    local crooms = workspace.CurrentRooms
                    local croom = game.Players.LocalPlayer:GetAttribute("CurrentRoom")
                    local room = crooms[croom]
                    if _G.Controlling == true then
                        if room.FigureSetup.FigureRig:FindFirstChild("Root") then
                            _G.Controlling = false
                            locplr.Character.ControlPart:remove()
                            locplr.Character.Humanoid.HipHeight = 3
                            local figure = room.FigureSetup.FigureRig
                            if figure.Root:FindFirstChild("Control") then
                                figure.Root:FindFirstChild("Control"):remove()
                            end
                        else
                            _G.Controlling = false
                            locplr.Character.ControlPart:remove()
                            locplr.Character.Humanoid.HipHeight = 3
                        end
                    end
                end
            }
        }
    }
}

return Addon;
