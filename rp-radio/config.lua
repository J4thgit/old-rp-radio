radioConfig = {
    Controls = {
        Activator = { -- Open/Close Radio
            Name = "INPUT_CELLPHONE_CANCEL", -- Control name
            Key = 177, -- F2
        },
        Secondary = {
            Name = "INPUT_SPRINT",
            Key = 21, -- Left Shift
            Enabled = false, -- Require secondary to be pressed to open radio with Activator
        },
        Toggle = { -- Toggle radio on/off
            Name = "INPUT_CONTEXT", -- Control name
            Key = 51, -- E
        },
        Increase = { -- Increase Frequency
            Name = "INPUT_CELLPHONE_RIGHT", -- Control name
            Key = 175, -- Right Arrow
            Pressed = false,
        },
        Decrease = { -- Decrease Frequency
            Name = "INPUT_CELLPHONE_LEFT", -- Control name
            Key = 174, -- Left Arrow
            Pressed = false,
        },
        Input = { -- Choose Frequency
            Name = "INPUT_FRONTEND_ACCEPT", -- Control name
            Key = 201, -- Enter
            Pressed = false,
        },
        Broadcast = {
            Name = "INPUT_CHARACTER_WHEEL", -- Control name
            Key = 19, -- Caps Lock
        },
        ToggleClicks = { -- Toggle radio click sounds
            Name = "INPUT_SELECT_WEAPON", -- Control name
            Key = 37, -- Tab
        }
    },
    Frequency = {
        Private = { -- List of private frequencies
            [1] = true, -- police
            [2] = true, -- police
            [3] = true, -- police
            [4] = true, -- ambulance
            [5] = true, -- ambulance
            [6] = true, -- ambulance
            [7] = true, -- police politique
            [8] = true, -- police politique
        }, -- List of private frequencies
        Current = 1, -- Don't touch
        CurrentIndex = 1, -- Don't touch
        Min = 1, -- Minimum frequency
        Max = 1000, -- Max number of frequencies
        List = {}, -- Frequency list, Don't touch
        Access = {}, -- List of freqencies a player has access to
    },
    AllowRadioWhenClosed = true -- Allows the radio to be used when not open (uses police radio animation) 
}

Citizen.CreateThread(function()
    while true do
        local PlayerData = ESX.GetPlayerData()
        if PlayerData.job.name == "police" or PlayerData.job.name == "fbi" or PlayerData.job.name == "ambulance" then
            radioConfig.Frequency.Access[1] = true
            radioConfig.Frequency.Access[2] = true
            radioConfig.Frequency.Access[3] = true
            radioConfig.Frequency.Access[4] = true
            radioConfig.Frequency.Access[5] = true
            radioConfig.Frequency.Access[6] = true
            radioConfig.Frequency.Access[7] = true
            radioConfig.Frequency.Access[8] = true
        else
            radioConfig.Frequency.Access[1] = false
            radioConfig.Frequency.Access[2] = false
            radioConfig.Frequency.Access[3] = false
            radioConfig.Frequency.Access[4] = false
            radioConfig.Frequency.Access[5] = false
            radioConfig.Frequency.Access[6] = false
            radioConfig.Frequency.Access[7] = false
            radioConfig.Frequency.Access[8] = false
        end
        
        Citizen.Wait(1000)
    end
end)