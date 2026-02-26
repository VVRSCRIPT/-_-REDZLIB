local Libary = loadstring(game:HttpGet("https://raw.githubusercontent.com/VVRSCRIPT/-_-REDZLIB/refs/heads/main/ui.txt"))()

  Libary:SetTheme("BlueCartola")

workspace.FallenPartsDestroyHeight = -math.huge




local Window = redzlib:MakeWindow({
    Title = "゠・_・゠ MUSIC HUB",
    SubTitle = "        BROOKHAVEN RP| by ゠・_・゠",
    LoadText = "Loading ゠・_・゠ HUB",
    Flags = "゠・_・゠HUB_Broookhaven"
})

Window:AddMinimizeButton({
  Button = {
    Image = "rbxassetid://77996083279350"
  },
  UICorner = {true,
    CornerRadius = UDim.new(0.5, 0)
  },
  UIStroke = {false, {
  }}
})

local Tab = Window:MakeTab({"الاغاني", Icon = "listmusic"})

Tab:AddTextBox({
  Name = "مشغل اغاني للسكيت بورد",
  Description = "ملاحظه: يجب ان يكون معك قيمباس الاغاني", 
  PlaceholderText = "ادخل الكود هنا",
  Callback = function(Value)
    local args1 = {
            [1] = "SkateBoard"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
 
        -- Replacing the static value with the input from the textbox
        local args2 = {
            [1] = "PickingScooterMusicText",
            [2] = Value -- Here, we use the textbox value to replace 35935204
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
        
  end
})

Tab:AddTextBox({
  Name = "مشغل اغاني للبيت",
  Description = "ملاحظه: يجب ان يكون معك قيمباس الاغاني", 
  PlaceholderText = "ادخل الكود هنا",
  Callback = function(Value)
    local args = {
            [1] = "PickHouseMusicText",
            [2] = input -- Use the user's input here
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1Player1sHous1e"):FireServer(unpack(args))
  end
})

Tab:AddTextBox({
  Name = "مشغل اغاني مجاني بدون قيمباس",
  Description = "ملاحظه: الناس تسمع فقط اول الاغنيه انت تسمعها كامله", 
  PlaceholderText = "ادخل الكود هنا",
  Callback = function(Value)
    local args1 = {
            [1] = "SkateBoard"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args1))
 
        -- Replacing the static value with the input from the textbox
        local args2 = {
            [1] = "PickingScooterMusicText",
            [2] = Value -- Here, we use the textbox value to replace 35935204
        }
        game:GetService("ReplicatedStorage"):WaitForChild("RE"):WaitForChild("1NoMoto1rVehicle1s"):FireServer(unpack(args2))
        
  end
})

local Section = Tab:AddSection({
	Name = "ملاحظه: يجب ان يكون لديك قيمباس الاغاني لتشغيل الاغاني"
})

local Section = Tab:AddSection({
	Name = "الاغاني العربية"
})

Tab:AddButton({ 	Name  = "ياللالي و يالالا", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "116815742960163"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اول مره حياتي تورد", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "122957821960545"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "ال ما يسئل علي ماريده لا الله وياه الله وياه", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "100812988870930"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "حبي طفى بلحظه جثى", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "99349482246952"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "ميلي و بخصرك ميلي", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "74895850882339"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "هاذي انتي من عرفك ما تغير فيكي شي | عزف عود", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "133788458900692"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "عزف عود مع كلام ما اعرفه اسمه", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "93398454695410"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "لين جاني مع الايام علم و بكيت", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "70943346587828"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "يخبل يجنن كلامه مني انا ما امل", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "99391269377766"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "رسميا من قلب و رب كاريزما و فد شي ينحب", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "89189069089618"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "ست البنات مصري", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "128143898719881"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "دبكه", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "108761189974962"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "قرو قاردن", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "1836009208"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فورتنايت ببجي", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "8671258578"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنيه في عالم", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "125151253990122"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "حزين", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "135308045"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "الحمدلله", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "7609175072"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "جاء الليل", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "132182002773837"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "السلام عليكم", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "7038667176"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "صدام", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "8273849195"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "ويه ويه", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "1164198099"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "حبيبي شنو في", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "7657178494"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "مصري حب", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "93620598835551"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "عراقي حزين", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "80039364766636"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "دبكه", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "76698985299412"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "ازعاج", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "4776398821"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "ضراط", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "4809574295"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "عزف عود", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "114157294180725"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "عزف عود 2", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "104085669063530"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "يمني وين الوفاء", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "116150415085902"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "حزينه", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "132378395114388"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "سعودي حزين", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "99123490695024"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اه ياحلو", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "93620598835551"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "تعالي عند دادي", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "7984027399"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "ابو علي حسن و حسين", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "98224127892587"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنيه سوريه", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "98640789490482"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "خليجي", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "127593500790634"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "رعب", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "1848748988"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "سبونج بوب", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "2396797933"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنيه عربيه", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "1836685799"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اوو", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "93123670572331"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "ناني", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "8842446965"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

local Section = Tab:AddSection({
	Name = "اغاني اجنبيه"
})

Tab:AddButton({ 	Name  = "DeathBed", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "76463442516219"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "underMy Skin", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "76145067114930"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Tt - Twice", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "136694442832658"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Black Pink", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "113887644073284"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Rare UnLeak", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "79117388043755"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "I Carti", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "95660636199460"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Fuck Love", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "105663787518318"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "XhDCyeuej", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "127356583789936"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Rare Unleakkk 2", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "118767914595173"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Soulless", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "75806444139457"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Pk Ro paris", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "84543400636750"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Hypperdrop", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "78527071535561"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Drain Lieu", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "73154534382655"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Delicuentir", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "112808748111965"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Mistal Fiscorder", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "73743664006156"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Motagem Dimens", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "75038862482887"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "Sab boy", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "85857498059894"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "urue", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "117088145279665"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "LargR Friees", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "84882252466318"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

local Section = Tab:AddSection({
	Name = "اغاني فونك"
})

Tab:AddButton({ 	Name  = "بافو بافو", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "106317184644394"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك نادر", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "98677515506006"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "88505573152008"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "افخم فونك", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "17647322226"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك غضب", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "115859025716354"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك 5×30", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "73966367524216"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك عالمي", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "76578817848504"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك تيك توك", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "93218265275853"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك ممتاز", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "102402883551679"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك روسي", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "103066073385622"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك برازيلي", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "75038862482887"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك هندي", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "91301048841024"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك جهنمي", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "96527800313172"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك اسطوري", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "115028690484951"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك التربية السيئة", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

    	local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "91161894069716"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فينوم فونك", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "8086734311"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك نادر", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "4806290024"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك برازيلي 1", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "15689446096"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك برازيلي 2", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "111281710445018"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك دبكه", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "87968531262747"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك ايضا", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "17422156627"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك دبكه عربي", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "87968531262747"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك ذس اس ثانكس", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "9058205566"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "برازيلي", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "111281710445018"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك ناررر", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "73966367524216"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "14145626412"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك حزين", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "16662831858"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "فونك روسي", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "15689441943"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 1", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "15689443663"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 2", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "16190782181"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 3", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "15689448519"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 4", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "7825702538"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك نادره 5", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "71517955953236"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 6", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "127084858692372"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 7", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "104541292443133"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 8", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "130607529536925"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 9", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "84733736048142"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 10", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "82680101995105"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 11", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "76603092488414"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 12", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "124958445624871"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 13", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "16662833837"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اغنية فونك 14", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "90698302380427"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

local Section = Tab:AddSection({
	Name = "اصوات ميمز"
})

Tab:AddButton({ 	Name  = "ميمز 1", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "7341213035"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "ميمز 2", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "6389463761"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "ميمز 3", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "3007579524"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

local Tab = Window:MakeTab({"القران", Icon = "music"})

local Section = Tab:AddSection({
	Name = "قران كريم"
})

Tab:AddButton({ 	Name  = "هذا خلق الله فاروني ماءا خلق الذي من دونه", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "79912080084074"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "سوره الفلق", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "86911769585232"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "لإيلاف قريش", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "133272041755020"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "سوره الإخلاص", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "88269497623993"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "و السماء و الطارق", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "90593176828958"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "قران", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "1836685929"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "و توبوا الى الله", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "4711690175"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "اذان", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "1836685873"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

local Tab = Window:MakeTab({"السب", Icon = "music"})

local Section = Tab:AddSection({
	Name = "سب"
})

Tab:AddButton({ 	Name  = "صوت اهات", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "8107899910"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "سب 1", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "8701632845"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "سب 2", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "671399328"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "سب 3", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "6536444735"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "سب 4", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا 10 ثواني للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "5849978429"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

Tab:AddButton({ 	Name  = "سب 5", 	Callback = function()

game.StarterGui:SetCore("SendNotification", {
    Title = "تم التشغيل";
    Text = "ملاحظه: في اغاني تحتاج الى تقريبا دقيقه للتشغيل"; -- ARAB TEAM
    Duration = 5;
})

     local args = {
    [1] = "SkateBoard"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))
local args = {
    [1] = "PickingScooterMusicText",
    [2] = "7942547789"
}
 
game:GetService("ReplicatedStorage").RE:FindFirstChild("1NoMoto1rVehicle1s"):FireServer(unpack(args))

end })

local Tab = Window:MakeTab({"الاغاني المجانيه", Icon = "music"})

local MusicId = nil
local MusicToggle = false
local currentSound = nil
local pausedPosition = 0

local function playMusic()
    if MusicToggle and MusicId then
        if currentSound then
            currentSound:Stop()
            currentSound:Destroy()
        end
        currentSound = Instance.new("Sound", game.Workspace)
        currentSound.SoundId = "rbxassetid://" .. MusicId
        currentSound.TimePosition = pausedPosition
        currentSound.Looped = true
        currentSound:Play()
        currentSound.Ended:Connect(function()
            currentSound.TimePosition = 0
            currentSound:Play()
        end)
    end
end

Tab:AddTextBox({
    Name = "ضع كود الاغنيه",
    Description = "ضع كود الاغنيه هنا التي تريد تشغيلها",
    Default = "",
    Callback = function(value)
        MusicId = value
        playMusic()
    end
})

local Section = Tab:AddSection({"وضع تشغيل الاغنية"})

local Toggle1 = Tab:AddToggle({
    Name = "تشغيل الاغنية",
    Description = "اضغط لتشغيل الاغنية",
    Default = false,
    Callback = function(state)
        MusicToggle = state
        if MusicToggle then
            playMusic()
        else
            if currentSound then
                pausedPosition = currentSound.TimePosition
                currentSound:Stop()
            end
        end
    end
})

Tab:AddButton({
    Name = "اعادة تشغيل الاغنية",
    Description = "Enables or disables music repetition.",
    Callback = function()
        if MusicToggle and currentSound then
            currentSound.TimePosition = 0
            currentSound:Play()
        end
    end
})

local Section = Tab:AddSection({"اكواد اغاني قريبا.."})

Tab:AddButton({
    Name = "",
    Description = "اضغط هنا لتشغيل الاغنية",
    Callback = function()
        MusicId = ""
        playMusic()
    end
})

Tab:AddButton({
    Name = "انسخ كود الاغنية",
    Description = "اضغط هنا لنسخ كود الاغنية",
    Callback = function()
        setclipboard("")
    end
})

local Tab = Window:MakeTab({"الاصوات", Icon = "music4"})

local loopAtivo = false
local InputID = ""

Tab:AddTextBox({
    Name = "ضع كود الاغنيه",
    Description = "ضع كود الاغنيه التي تريد تشغيلها في الصندوق",
    Default = "",
    PlaceholderText = "ادخل الكود هنا",
    ClearTextOnFocus = true,
    Callback = function(text)
        InputID = tonumber(text)
    end
})

local function fireServer(eventName, args)
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local event = ReplicatedStorage:FindFirstChild("RE") and ReplicatedStorage.RE:FindFirstChild(eventName)
    if event then
        pcall(function()
            event:FireServer(unpack(args))
        end)
    end
end

Tab:AddButton({
    Name = "تشغيل الاغنيه",
    Description = "اضغط هنا لتشغيل الاغنية التي قمت باختيارها",
    Callback = function()
        if InputID then
            fireServer("1Gu1nSound1s", {Workspace, InputID, 1})
            local globalSound = Instance.new("Sound", Workspace)
            globalSound.SoundId = "rbxassetid://" .. InputID
            globalSound.Looped = false
            globalSound:Play()
            task.wait(3)
            globalSound:Destroy()
        end
    end
})

Tab:AddToggle({
    Name = "اعادة اشغيل الاغنية تلقائيا",
    Description = "اضغط هنا لاعاده تشغيل الاغنية تلقائيا",
    Default = false,
    Callback = function(state)
        loopAtivo = state
        if loopAtivo then
            spawn(function()
                while loopAtivo do
                    if InputID then
                        fireServer("1Gu1nSound1s", {Workspace, InputID, 1})
                        local globalSound = Instance.new("Sound", Workspace)
                        globalSound.SoundId = "rbxassetid://" .. InputID
                        globalSound.Looped = false
                        globalSound:Play()
                        task.spawn(function()
                            task.wait(3)
                            globalSound:Destroy()
                        end)
                    end
                    task.wait(1)
                end
            end)
        end
    end
})

local function createDropdown(title, musicOptions, defaultOption)
    local musicNames = {}
    local categoryMap = {}
    for category, sounds in pairs(musicOptions) do
        for _, music in ipairs(sounds) do
            if music.name ~= "" and music.id ~= "4354908569" then
                table.insert(musicNames, music.name)
                categoryMap[music.name] = {id = music.id, category = category}
            end
        end
    end

    local selectedSoundID = nil
    local currentVolume = 1
    local currentPitch = 1

    local function playSound(soundId, volume, pitch)
        fireServer("1Gu1nSound1s", {Workspace, soundId, volume})
        local globalSound = Instance.new("Sound")
        globalSound.Parent = Workspace
        globalSound.SoundId = "rbxassetid://" .. soundId
        globalSound.Volume = volume
        globalSound.Pitch = pitch
        globalSound.Looped = false
        globalSound:Play()
        task.spawn(function()
            task.wait(3)
            globalSound:Destroy()
        end)
    end

    Tab:AddDropdown({
        Name = title,
        Description = "اختار صوت ميمز الذي تريده",
        Default = defaultOption,
        Multi = false,
        Options = musicNames,
        Callback = function(selectedSound)
            if selectedSound and categoryMap[selectedSound] then
                selectedSoundID = categoryMap[selectedSound].id
            else
                selectedSoundID = nil
            end
        end
    })

    Tab:AddButton({
        Name = "تشغيل الاغنية",
        Description = "اضغط هنا لتشغيل الاغنية",
        Callback = function()
            if selectedSoundID then
                playSound(selectedSoundID, currentVolume, currentPitch)
            end
        end
    })

    local dropdownLoopActive = false
    Tab:AddToggle({
        Name = "اعادة تشغيل الاغنية تلقائيا",
        Description = "اضغط هنا لاعادة تشغيل الاغنية تلقائيا",
        Default = false,
        Callback = function(state)
            dropdownLoopActive = state
            if state then
                task.spawn(function()
                    while dropdownLoopActive do
                        if selectedSoundID then
                            playSound(selectedSoundID, currentVolume, currentPitch)
                        end
                        task.wait(1)
                    end
                end)
            end
        end
    })
end

-- Dropdown "Memes"
createDropdown("اصوات ميمز", {
    ["Memes"] = {
        {name = "pankapakan", id = "122547522269143"},
        {name = "gemido", id = "106835463235574"},
        {name = "gemidao v2", id = "112179417472137"},
        {name = "Gemido ultra rápido", id = "128863565301778"},
        {name = "sus sex", id = "128137573022197"},
        {name = "gemido estranho", id = "131219411501419"},
        {name = "gemido kawai", id = "100409245129170"},
        {name = "Hentai gemido", id = "125037339642322"},
        {name = "Hentai wiaaaaan", id = "88332347208779"},
        {name = "iamete cunasai", id = "108494476595033"},
        {name = "dodichan onnn...", id = "134640594695384"},
        {name = "Toma jack", id = "132603645477541"},
        {name = "Toma jackV2", id = "100446887985203"},
        {name = "Toma jack no sol quente", id = "97476487963273"},
        {name = "ifood", id = "133843750864059"},
        {name = "pelo geito ela ta querendo ram", id = "94395705857835"},
        {name = "lula vai todo mundo", id = "136804576009416"},
        {name = "coringa", id = "84663543883498"},
        {name = "shoope", id = "8747441609"},
        {name = "quenojo", id = "103440368630269"},
        {name = "sai dai lava prato", id = "101232400175829"},
        {name = "se e loko numconpeça", id = "78442476709262"},
        {name = "mita sequer que eu too uma", id = "94889439372168"},
        {name = "Hoje vou ser tua mulher e tu", id = "90844637105538"},
        {name = "Deita aqui eu mandei vc deitar sirens", id = "100291188941582"},
        {name = "miau", id = "131804436682424"},
        {name = "skibidi", id = "128771670035179"},
        {name = "BIRULEIBI", id = "121569761604968"},
        {name = "sai", id = "121169949217007"},
        {name = "risada boa dms", id = "127589011971759"},
        {name = "vacilo perna de pau", id = "106809680656199"},
        {name = "gomo gomo no!!!", id = "137067472449625"},
        {name = "arroto", id = "140203378050178"},
        {name = "iraaaa", id = "136752451575091"},
        {name = "não fica se achando muito não", id = "101588606280167"},
        {name = "WhatsApp notificaçao", id = "107004225739474"},
        {name = "Samsung", id = "123767635061073"},
        {name = "Shiiii", id = "120566727202986"},
        {name = "ai_tomaa miku", id = "139770074770361"},
        {name = "kuru_kuru", id = "122465710753374"},
        {name = "PM ROCAM", id = "96161547081609"},
        {name = "cavalo!!", id = "78871573440184"},
        {name = "deixa os garoto brinca", id = "80291355054807"},
        {name = "flamengo", id = "137774355552052"},
        {name = "sai do mei satnas", id = "127944706557246"},
        {name = "namoral agora e a hora", id = "120677947987369"},
        {name = "n pode me chutar pq seu celebro e burro", id = "82284055473737"},
        {name = "vc ta fudido vou te pegar", id = "120214772725166"},
        {name = "deley", id = "102906880476838"},
        {name = "Tu e um beta", id = "130233956349541"},
        {name = "Porfavor n tira eu nao", id = "85321374020324"},
        {name = "Olá beleza vc pode me dá muitos", id = "74235334504693"},
        {name = "Discord sus", id = "122662798976905"},
        {name = "rojao apito", id = "6549021381"},
        {name = "off", id = "1778829098"},
        {name = "Kazuma kazuma", id = "127954653962405"},
        {name = "sometourado", id = "123592956882621"},
        {name = "Estouradoespad", id = "136179020015211"},
        {name = "Alaku bommm", id = "110796593805268"},
        {name = "busss", id = "139841197791567"},
        {name = "Estourado wItb", id = "137478052262430"},
        {name = "sla", id = "116672405522828"},
        {name = "HA HA HA", id = "138236682866721"}
    }
}, "pankapakan")

Tab:AddSection({ "اصوات رعب" })

-- Dropdown "Efeito/Terror"
createDropdown("اختر صوت رعب", {
    ["efeito/terror"] = {
        {name = "jumpscar", id = "91784486966761"},
        {name = "gritoestourado", id = "7520729342"},
        {name = "gritomedo", id = "113029085566978"},
        {name = "Nukesiren", id = "9067330158"},
        {name = "nuclear sirenv2", id = "675587093"},
        {name = "Alertescola", id = "6607047008"},
        {name = "Memealertsiren", id = "8379374771"},
        {name = "sirenv3", id = "6766811806"},
        {name = "alet malaysia", id = "7714172940"},
        {name = "Risada", id = "79191730206814"},
        {name = "Hahahah", id = "90096947219465"},
        {name = "scream", id = "314568939"},
        {name = "Terrified meme scream", id = "5853668794"},
        {name = "Sonic.exe Scream Effect", id = "146563959"},
        {name = "Demon Scream", id = "2738830850"},
        {name = "SCP-096 Scream (raging)", id = "343430735"},
        {name = "Nightmare Yelling Bursts", id = "9125713501"},
        {name = "HORROR SCREAM 07", id = "9043345732"},
        {name = "Female Scream Woman Screams", id = "9114397912"},
        {name = "Scream1", id = "1319496541"},
        {name = "Scream2", id = "199978176"},
        {name = "scary maze scream", id = "270145703"},
        {name = "SammyClassicSonicFan's Scream", id = "143942090"},
        {name = "FNAF 2 Death Scream", id = "1572549161"},
        {name = "cod zombie scream", id = "8566359672"},
        {name = "Slendytubbies- CaveTubby Scream", id = "1482639185"},
        {name = "FNAF 2 Death Scream", id = "5537531920"},
        {name = "HORROR SCREAM 15", id = "9043346574"},
        {name = "Jumpscare Scream", id = "6150329916"},
        {name = "FNaF: Security Breach", id = "2050522547"},
        {name = "llllllll", id = "5029269312"},
        {name = "loud jumpscare", id = "7236490488"},
        {name = "fnaf", id = "6982454389"},
        {name = "Pinkamena Jumpscare 1", id = "192334186"},
        {name = "Ennard Jumpscare 2", id = "629526707"},
        {name = "a sla medo dino", id = "125506416092123"}
    }
}, "jumpscar")

local Section = Tab:AddSection({
	Name = ""
})

-- Lista de áudios
local audios = {
    {Name = "c00lkidd theme (3 sec)", ID = 138081566},
    {Name = "Yamete Kudasai", ID = 108494476595033},
    {Name = "Gritinho", ID = 5710016194},
    {Name = "Jumpscare Horroroso", ID = 85435253347146},
    {Name = "Áudio Alto", ID = 6855150757},
    {Name = "Ruído", ID = 120034877160791},
    {Name = "Jumpscare Granny (Game Over)", ID = 1592934514},
    {Name = "Risada Da Bruxa Minecraft", ID = 116214940486087},
    {Name = "The Boiled One", ID = 137177653817621},
    {Name = "Deitei Um Ave Maria Doido", ID = 128669424001766},
    {Name = "Mandrake Detected", ID = 9068077052},
    {Name = "Aaaaaaaaa", ID = 80156405968805},
    {Name = "AAAHHHH", ID = 9084006093},
    {Name = "amongus", ID = 6651571134},
    {Name = "Sus", ID = 6701126635},
    {Name = "Gritao AAAAAAAAA", ID = 5853668794},
    {Name = "UHHHHH COFFCOFF", ID = 7056720271},
    {Name = "SUS", ID = 7153419575},
    {Name = "Sonic.exe", ID = 2496367477},
    {Name = "Tubers93 good", ID = 103215672097028},
    {Name = "Tubers93 2", ID = 18131809532},
    {Name = "John's Laugh", ID = 130759239},
    {Name = "Nao sei KKKK", ID = 6549021381},
    {Name = "Grito", ID = 80156405968805},
    {Name = "Sus Audio", ID = 7705506391},
    {Name = "AAAH", ID = 7772283448},
    {Name = "Gay, gay", ID = 18786647417},
    {Name = "Bat Hit", ID = 7129073354},
    {Name = "Nuclear Siren", ID = 675587093},
    {Name = "Sem ideia de nome KK", ID = 7520729342},
    {Name = "Grito 2", ID = 91412024101709},
    {Name = "Estora tímpano", ID = 268116333},
    {Name = "Gemidão", ID = 106835463235574},
    {Name = "Toma Jack", ID = 132603645477541},
    {Name = "Pede ifood pede", ID = 133843750864059},
    {Name = "I Ghost The down", ID = 84663543883498},
    {Name = "Compre OnLine Na shoope", ID = 8747441609},
    {Name = "Uh Que Nojo", ID = 103440368630269},
    {Name = "Sai dai Lava Prato", ID = 101232400175829},
    {Name = "Seloko num compensa", ID = 78442476709262},
}

local selectedAudioID

-- Adicionar uma textbox para inserir o ID do áudio
Tab:AddTextBox({
    Name = "كود الاغنيه",
    Description = "",
    PlaceholderText = "ادخل الكود هنا",
    Callback = function(value)
        selectedAudioID = tonumber(value)
    end
})

-- Adicionar uma dropdown para selecionar o áudio
local audioNames = {}
for _, audio in ipairs(audios) do
    table.insert(audioNames, audio.Name)
end

Tab:AddDropdown({
    Name = "اختار الاغنيه",
    Description = "",
    Options = audioNames,
    Default = audioNames[1],
    Flag = "selected_audio",
    Callback = function(value)
        for _, audio in ipairs(audios) do
            if audio.Name == value then
                selectedAudioID = audio.ID
                break
            end
        end
    end
})

-- Controle do loop
local audioLoop = false

-- Nova seção para loop de áudio
Tab:AddSection({""})

-- Função para tocar o áudio repetidamente
local function playLoopedAudio()
    while audioLoop do
        if selectedAudioID then
            local args = {
                [1] = game:GetService("Workspace"),
                [2] = selectedAudioID,
                [3] = 1,
            }
            game:GetService("ReplicatedStorage").RE:FindFirstChild("1Gu1nSound1s"):FireServer(unpack(args))

            -- Criar e tocar o áudio
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. selectedAudioID
            sound.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
            sound:Play()
        else
            warn("Nenhum áudio selecionado!")
        end

        task.wait(4) -- Pequeno delay para evitar sobrecarga
    end
end


-- Toggle para loop de áudio
Tab:AddToggle({
    Name = "تشغيل الاغنيه تلقائيا",
    Description = "",
    Default = false,
    Flag = "audio_loop",
    Callback = function(value)
        audioLoop = value
        if audioLoop then
            task.spawn(playLoopedAudio) -- Inicia o loop em uma nova thread
        end
    end
})

-- Nova seção para tocar áudio
Tab:AddSection({""})

-- Botão para tocar o áudio
Tab:AddButton({"تشغيل الاغنيه", function()
    playAudio()
end})

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local audioID = 6314880174 

local function Audio_All_ClientSide(ID)
    local function CheckFolderAudioAll()
        local FolderAudio = workspace:FindFirstChild("Audio all client")
        if not FolderAudio then
            FolderAudio = Instance.new("Folder")
            FolderAudio.Name = "Audio all client"
            FolderAudio.Parent = workspace
        end
        return FolderAudio
    end

    local function CreateSound(ID)
        if type(ID) ~= "number" then
            print("put a valid id.")
            return nil
        end

        local Folder_Audio = CheckFolderAudioAll()
        if Folder_Audio then
            local Sound = Instance.new("Sound")
            Sound.SoundId = "rbxassetid://" .. ID
            Sound.Volume = 1
            Sound.Looped = false
            Sound.Parent = Folder_Audio
            Sound:Play()
            task.wait(1) -- Tempo de espera antes de remover o som
            Sound:Destroy()
        end
    end

    CreateSound(ID)
end

local function Audio_All_ServerSide(ID)
    if type(ID) ~= "number" then
        print("put a valid id.")
        return nil
    end

    local GunSoundEvent = ReplicatedStorage:FindFirstChild("1Gu1nSound1s", true)
    if GunSoundEvent then
        GunSoundEvent:FireServer(workspace, ID, 1)
    end
end

-- Toggle para "Estorar ouvido de geral"
Tab:AddToggle({
    Name = "اقوى صوت ازعاج",
    Description = "",
    Default = false,
    Flag = "audio_spam",
    Callback = function(value)
        getgenv().Audio_All_loop_fast = value

        while getgenv().Audio_All_loop_fast do
            Audio_All_ServerSide(audioID)
            task.spawn(function()
                Audio_All_ClientSide(audioID)
            end)
            task.wait(0.03) -- Delay extremamente rápido (0.03 segundos)
        end
    end
})

Tab:AddParagraph({"تحذير:", "اخفض الصوت قبل التشغيل"})