local players = game:GetService("Players")

local library = require(script.library)

local Window = library:CreateWindow({
    Title = "SAUI",
    SubTitle = "[Starving Artists]",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl -- Used when theres no MinimizeKeybind
})

local tabs = {
    Steal = Window:AddTab({ Title = "Steal", Icon = "" }),
    Generate = Window:AddTab({ Title = "Generate", Icon = "" }),
    Bundles = Window:AddTab({ Title = "Bundles", Icon = "" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "" })
}

-- // Main code
do
    
    -- tab.Steal
    do
        local steal_playerdropdown = tabs.Steal:AddDropdown({
            Title = "Choose Target",
            list = {"1", "2", "3"},
            Default = 1
        })
        local steal_artdropdown = tabs.Steal:AddDropdown({
            Title = "Choose Art",
            list = { "1", "2", "3", "4", "5", "6", },
            Default = 1
        })
        local steal_filename = tabs.Steal:AddInput("Input", {
            Title = "Put file name here",
            Default = "StolenArt.txt",
            Placeholder = "Attempt to string nil (haha joke. Put da name, bozo)",
            Numeric = false, -- Only allows numbers
            Finished = false, -- Only calls callback when you press enter
            Callback = function(Value)
                print("Input changed:", Value)
            end
        })
        local savebutton = tabs.Steal:AddButton({
            Title = "Save",
            Callback = function()
                print("saved")
            end
        })
    end

    -- tab.Generate
    do
        local artsdropdown = tabs.Generate:AddDropdown({
            Title = "Choose Art",
            list = {"A","A","A","A","A"},
            Default = 1
        })
        local genbutton = tabs.Generate:AddButton({
            Title = "Save",
            Callback = function()
                print("saved")
            end
        })
    end

    -- tab.Bundles
    do
        tabs.Bundles:AddParagraph({
            Title = "Note",
            Content = "Bundles are manually added"
        })
    end

    -- tab.Misc
    do
        tabs.Misc:AddParagraph({
            Title = "TODO:",
            Content = "Serverhop\nDonor Finder"
        })
    end

end
