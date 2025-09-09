local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local Window = OrionLib:MakeWindow({Name = "BNXYUNG TELEGRAM", HidePremium = false, SaveConfig = true, ConfigFolder = "BNXYUNG"})

OrionLib:MakeNotification({
    Name = "Bienvenido",
    Content = "Panel BNXYUNG cargado correctamente",
    Image = "rbxassetid://4483345998",
    Time = 5
})

local Tab = Window:MakeTab({Name = "Main", Icon = "rbxassetid://4483345998", PremiumOnly = false})
Tab:AddButton({
    Name = "Copiar Telegram",
    Callback = function()
        setclipboard("https://t.me/kakashii_ios")
        OrionLib:MakeNotification({Name = "Copiado", Content = "Link Telegram copiado", Time = 3})
    end
})

Tab:AddToggle({
    Name = "ESP Activar",
    Default = false,
    Callback = function(state)
        if state then
            for _,v in pairs(game:GetService("Players"):GetPlayers()) do
                if v ~= game.Players.LocalPlayer then
                    local esp = Drawing.new("Text")
                    esp.Text = v.Name
                    esp.Size = 18
                    esp.Color = Color3.fromRGB(255, 0, 0)
                    esp.Position = Vector2.new(100, 100)
                    esp.Visible = true
                end
            end
        end
    end
})

Tab:AddToggle({
    Name = "SkyLine",
    Default = false,
    Callback = function(state)
        if state then
            local line = Instance.new("Part", workspace)
            line.Anchored = true
            line.Size = Vector3.new(999, 0.1, 999)
            line.Position = Vector3.new(0, 300, 0)
            line.Color = Color3.fromRGB(0, 255, 255)
        end
    end
})

local AimbotTab = Window:MakeTab({Name = "Aimbot", Icon = "rbxassetid://4483345998", PremiumOnly = false})
AimbotTab:AddToggle({
    Name = "AIM CABEZA",
    Default = false,
    Callback = function(state)
        getgenv().AimHead = state
    end
})

AimbotTab:AddToggle({
    Name = "AIM IA",
    Default = false,
    Callback = function(state)
        getgenv().AimBot = state
    end
})

AimbotTab:AddToggle({
    Name = "AIM CAMERA",
    Default = false,
    Callback = function(state)
        getgenv().AimCamera = state
    end
})
