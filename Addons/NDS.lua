return {
    Name = "NDS",
	Title = "Natural Disaster Survival",
    Game = "*",

	Elements = {
		{
			Type = "Slider",
			Name = "blackholepos",
			Arguments = {
				Text = 'Height',
				Tooltip = 'Height of ring',
                Min = 0,
                Max = 200,
                Rounding = 0,
                Default = 0,

				Callback = function(value)
					_G.Heightring = value
				end
			}
        },

        {
			Type = "Slider",
			Name = "blackholepos",
			Arguments = {
				Text = 'Distance',
				Tooltip = 'Distance of ring',
                Min = 0,
                Max = 10,
                Rounding = 1,
                Default = 0,

				Callback = function(value)
					_G.Distring = value
				end
			}
        },

        {
			Type = "Button",
			Name = "tornado",
			Arguments = {
				Text = 'Ring of parts',
				Tooltip = 'Flying parts are real...',

				Func = function()
                    if not _G.Heightring then
                        _G.Heightring = 0
                    end
                    if not _G.Distring then
                        _G.Distring = 0
                    end
                    if not _G.BlackholeEnabled then
                    _G.BlackholeEnabled = true
					local Folder = Instance.new("Folder", game:GetService("Workspace"))
                    local Part = Instance.new("Part", Folder)
                    local Attachment1 = Instance.new("Attachment", Part)
                    local AttachmentPart = Instance.new("Part", Folder)
                    AttachmentPart.Name = "ShowAttachment"
                    Part.Anchored = true
                    Part.Shape = "Ball"
                    Part.Size = Vector3.new(1, 1, 1)
                    Part.CanCollide = false
                    Part.Transparency = 1
                    AttachmentPart.Anchored = true
                    AttachmentPart.Shape = "Ball"
                    AttachmentPart.Size = Vector3.new(1, 1, 1)
                    AttachmentPart.CanCollide = false
                    Attachment1.Visible = false
                    local function follow()
                        while true do
                            if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
                                Part.Position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position + Vector3.new(0, _G.Heightring, -8 * _G.Distring)
                            end
                            task.wait(0.01)
                        end
                    end
                    local function spin()
                        while true do
                            Attachment1.CFrame = CFrame.new(Vector3.new(1 * _G.Distring, 0, 1 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(2 * _G.Distring, 0, 2 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(3 * _G.Distring, 0, 3 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(4 * _G.Distring, 0, 4 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(5 * _G.Distring, 0, 5 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(6 * _G.Distring, 0, 6 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(7 * _G.Distring, 0, 7 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(8 * _G.Distring, 0, 8 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(7 * _G.Distring, 0, 9 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(6 * _G.Distring, 0, 10 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(5 * _G.Distring, 0, 11 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(4 * _G.Distring, 0, 12 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(3 * _G.Distring, 0, 13 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(2 * _G.Distring, 0, 14 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(1 * _G.Distring, 0, 15 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(0 * _G.Distring, 0, 16 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-1 * _G.Distring, 0, 15 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-2 * _G.Distring, 0, 14 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-3 * _G.Distring, 0, 13 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-4 * _G.Distring, 0, 12 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-5 * _G.Distring, 0, 11 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-6 * _G.Distring, 0, 10 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-7 * _G.Distring, 0, 9 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-8 * _G.Distring, 0, 8 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-7 * _G.Distring, 0, 7 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-6 * _G.Distring, 0, 6 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-5 * _G.Distring, 0, 5 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-4 * _G.Distring, 0, 4 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-3 * _G.Distring, 0, 3 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-2 * _G.Distring, 0, 2 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(-1 * _G.Distring, 0, 1 * _G.Distring))
                            task.wait()
                            Attachment1.CFrame = CFrame.new(Vector3.new(0 * _G.Distring, 0, 0 * _G.Distring))
                            task.wait()
                        end
                    end
                    local function showatt()
                        while true do
                            AttachmentPart.CFrame = Attachment1.WorldCFrame
                            task.wait(0.01)
                        end
                    end
                    task.spawn(showatt)
                    task.spawn(follow)
                    task.spawn(spin)
                    local function ForcePart(v)
                        if v:IsA("Part") and v.Anchored == false and v.Parent:FindFirstChild("Humanoid") == nil and v.Parent:FindFirstChild("Head") == nil and v.Name ~= "Handle" then
                            for _, x in next, v:GetChildren() do
                                if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                                    x:Destroy()
                                end
                            end
                            if v:FindFirstChild("Attachment") then
                                v:FindFirstChild("Attachment"):Destroy()
                            end
                            if v:FindFirstChild("AlignPosition") then
                                v:FindFirstChild("AlignPosition"):Destroy()
                            end
                            if v:FindFirstChild("Torque") then
                                v:FindFirstChild("Torque"):Destroy()
                            end
                            v.CanCollide = false
                            local Torque = Instance.new("Torque", v)
                            Torque.Torque = Vector3.new(100000, 100000, 100000)
                            local AlignPosition = Instance.new("AlignPosition", v)
                            local Attachment2 = Instance.new("Attachment", v)
                            Torque.Attachment0 = Attachment2
                            AlignPosition.MaxForce = math.huge
                            AlignPosition.Responsiveness = 200
                            AlignPosition.Attachment0 = Attachment2
                            AlignPosition.Attachment1 = Attachment1
                        end
                    end
                    for _, v in next, game:GetService("Workspace"):GetDescendants() do
                        ForcePart(v)
                    end
                    game:GetService("Workspace").DescendantAdded:Connect(function(v)
                        ForcePart(v)
                    end)
                    end
				end
			}
        },

        {
			Type = "Button",
			Name = "nofalldamage",
			Arguments = {
				Text = 'No fall damage',
				Tooltip = 'uhhh',

				Func = function()
                    if not _G.Falldamageloaded then
                    _G.Falldamageloaded = true
                    local runsvc = game:GetService("RunService")
                    local heartbeat = runsvc.Heartbeat
                    local rstepped = runsvc.RenderStepped
                    local lp = game.Players.LocalPlayer
                    local novel = Vector3.zero
                    local function nofalldamage(chr)
                        local root = chr:WaitForChild("HumanoidRootPart")
                        if root then
                            local con
                            con = heartbeat:Connect(function()
                                if not root.Parent then
                                    con:Disconnect()
                                end
                                local oldvel = root.AssemblyLinearVelocity
                                root.AssemblyLinearVelocity = novel
                                rstepped:Wait()
                                root.AssemblyLinearVelocity = oldvel
                            end)
                        end
                    end
                    nofalldamage(lp.Character)
                    lp.CharacterAdded:Connect(nofalldamage)
                    end
				end
			}
        },
    }
}