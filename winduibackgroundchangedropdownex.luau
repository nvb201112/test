local WindUI = loadstring(game:HttpGet("https://github.com/Footagesus/WindUI/releases/latest/download/main.lua"))()

local Window = WindUI:CreateWindow({
    Title = "My Super Hub",
    Icon = "door-open", -- lucide icon. optional
    Author = "by .ftgs and .ftgs", -- optional
    Background = "rbxassetid://8964489619"
})

local Tab = Window:Tab({
    Title = "Tab Title",
    Icon = "bird", -- optional
    Locked = false,
})


 -- Images are Texture Id of Your Decal Image  
local Images = {
  ["Example_Name1"] = "8964489619", 
  ["Example_Name2"] = "8073107221",
  ["Example_Name3"] = "7545257075",
  ["Example_Name4"] = "8477956665",
  -- ["Example_Name4"] = "Decal Texture Id",
}

local e = {}
for k in pairs(Images) do 
  table.insert(e,k)
  end 

local SELECTED_IMAGE = Images[e[1]]
local Dropdown = Tab:Dropdown({
    Title = "Select Image ",
    Desc = "Dropdown description",
    Values = e,
    Value = e[1],
    SearchBarEnabled = true,
    AllowNone = false,
    Multi = false,
    Locked = false,
    Flag = "my_dropdown",
    Callback = function(selected)
      SELECTED_IMAGE =Images[selected]
      Window:SetBackgroundImage("rbxassetid://"..tostring(SELECTED_IMAGE))
      WindUI:Notify({Title = "Success",Content = "Changed successfully",Duration = 3})
    end
})
