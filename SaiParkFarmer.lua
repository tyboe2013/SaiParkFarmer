import("TemBot.Lua.TemBotLua")

--Registering the Temtem Window
tblua:RegisterTemTemWindow()
tblua:GetAreaColor()
--variable for first section
first = 2
--variable for second section
second = 0
--variable for third section
third = 0
--variable for fourth section
fourth = 0
--Counter variable for first section
a = 0
--Counter variable for second section
b = 0
--Counter variable for third section
c = 0
--Counter variable for fourth section
d = 0
--extra small sleep
xss = math.random(200, 300)
--medium sleep
mds = math.random(700, 900)
--Random Encounter Counter
enc = math.random(15, 45)
tblua:Sleep(1500)

if tblua:IsInWorld() == true then
    while (true) do
        tblua:Sleep(100)
        --check pause and logout user settings
        tblua:CheckPause()
        tblua:CheckLogout()
        while tblua:IsInWorld() == true do
            --Checks if this section is ready
            if first > 1 then
                --Checks if this it's ready to move
                --small random sleep
                local srs = math.random(150,250)
                local mrs = math.random(450,550)
                local xmrs = math.random(750,850)
                local lrs = math.random(950,1050)
                if a > enc then
                    tblua:StopMovement()
                    tblua:KeyDown(0x57)
                    tblua:KeyDown(0x41)
                    tblua:Sleep(lrs)
                    tblua:PressKey(0x57)
                    tblua:Sleep(srs)
                    tblua:PressKey(0x41)
                    tblua:KeyDown(0x41)
                    tblua:Sleep(xmrs)
                    tblua:PressKey(0x41)
                    if tblua:IsInFight() == true then
                        --LumaCheck
                        if tblua:CheckLuma() == true then
                            tblua:SendTelegramMessage("Luma Found!")
                            tblua:TestMessage("Luma Found!")
                            tblua:PressKey(0x71)
                        else
                            tblua:Sleep(mds)
                            tblua:PressKey(0x38)
                            tblua:Sleep(mds)
                            tblua:PressKey(0x38)
                            tblua:Sleep(mds)
                            tblua:KeyDown(0x57)
                            tblua:KeyDown(0x41)
                            tblua:Sleep(xmrs)
                            tblua:PressKey(0x57)
                            tblua:Sleep(srs)
                            tblua:PressKey(0x41)
                            tblua:KeyDown(0x41)
                            tblua:Sleep(mrs)
                            tblua:PressKey(0x41)
                            tblua:Sleep(xss)
                            --Failsafe if it doesn't make it the the next patch of grass
                            if Top == "0x357887" then
                                tblua:PressKey(0x1B)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x53)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:TestMessage("Failed to make it the next patch of grass")
                            elseif Right == "0x357887" then
                                tblua:PressKey(0x1B)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x53)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:TestMessage("Failed to make it the next patch of grass")
                            elseif Bottom == "0x357887" then
                                tblua:PressKey(0x1B)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x53)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:TestMessage("Failed to make it the next patch of grass")
                            elseif Left == "0x357887" then
                                tblua:PressKey(0x1B)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x53)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:TestMessage("Failed to make it the next patch of grass")
                            end
                            first = 0
                            a = 0
                            second = 2
                        end
                    end
                    --Failsafe if it doesn't make it the the next patch of grass
                    local Top = tblua:GetPixelColor(1174, 96)
                    local Right = tblua:GetPixelColor(1183, 102)
                    local Bottom = tblua:GetPixelColor(1173, 109)
                    local Left = tblua:GetPixelColor(1168, 104)
                    if Top == "0x357887" then
                        tblua:PressKey(0x1B)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:TestMessage("Failed to make it the next patch of grass")
                    elseif Right == "0x357887" then
                        tblua:PressKey(0x1B)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:TestMessage("Failed to make it the next patch of grass")
                    elseif Bottom == "0x357887" then
                        tblua:PressKey(0x1B)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:TestMessage("Failed to make it the next patch of grass")
                    elseif Left == "0x357887" then
                        tblua:PressKey(0x1B)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:TestMessage("Failed to make it the next patch of grass")
                    end
                    first = 0
                    a = 0
                    second = 2
                end
                --full random movement
                local MovementSwitch = math.random(2)
                if MovementSwitch == 1 then
                    tblua:RandomArea()
                elseif MovementSwitch == 2 then
                    tblua:CircleArea()
                end
            end

            --loop if minimap not detected
            while tblua:IsInWorld() == false do
                tblua:StopMovement()
                --if bot is in fight
                if tblua:IsInFight() == true then
                    --Luma check positive (message and notification)
                    tblua:StopMovement()
                    if tblua:CheckLuma() == true then
                        tblua:SendTelegramMessage("Luma Found!")
                        tblua:TestMessage("Luma Found!")
                        tblua:PressKey(0x71)
                        tblua:StopMovement()
                    else
                        --Else no Luma, so run away
                        while tblua:IsInWorld() == false do
                            if tblua:IsInFight() == true then
                                tblua:StopMovement()
                                tblua:Sleep(xss)
                                tblua:PressKey(0x38)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x38)
                                a = a + 1
                            end
                        end
                    end
                end
            end
            --Checks if this section is ready
            if second > 1 then
                local srs = math.random(150,250)
                local mrs = math.random(375,450)
                local rs = math.random(500,600)
                local xmrs = math.random(750,850)
                local lrs = math.random(950,1050)
                --Checks if this is ready to move
                if b > enc then
                    tblua:StopMovement()
                    tblua:KeyDown(0x57)
                    tblua:KeyDown(0x44)
                    tblua:Sleep(lrs)
                    tblua:PressKey(0x57)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:KeyDown(0x44)
                    tblua:Sleep(mrs)
                    tblua:PressKey(0x44)
                    tblua:KeyDown(0x57)
                    tblua:Sleep(600)
                    tblua:PressKey(0x57)
                    tblua:Sleep(xss)
                    tblua:KeyDown(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    if tblua:IsInFight() == true then
                        tblua:StopMovement()
                        --LumaCheck
                        if tblua:CheckLuma() == true then
                            tblua:SendTelegramMessage("Luma Found!")
                            tblua:TestMessage("Luma Found!")
                            tblua:PressKey(0x71)
                        else
                            tblua:Sleep(xmrs)
                            tblua:PressKey(0x38)
                            tblua:Sleep(xmrs)
                            tblua:PressKey(0x38)
                            tblua:Sleep(xmrs)
                            tblua:KeyDown(0x57)
                            tblua:KeyDown(0x44)
                            tblua:Sleep(mrs)
                            tblua:PressKey(0x57)
                            tblua:Sleep(xss)
                            tblua:PressKey(0x44)
                            tblua:Sleep(xss)
                            tblua:KeyDown(0x44)
                            tblua:Sleep(rs)
                            tblua:PressKey(0x44)
                            tblua:KeyDown(0x57)
                            tblua:Sleep(rs)
                            tblua:PressKey(0x57)
                            tblua:Sleep(xss)
                            tblua:KeyDown(0x44)
                            tblua:Sleep(xss)
                            tblua:PressKey(0x44)
                            tblua:Sleep(xss)
                            b = 0
                            second = 0
                            third = 2
                            local Top = tblua:GetPixelColor(1174, 96)
                            local Right = tblua:GetPixelColor(1183, 102)
                            local Bottom = tblua:GetPixelColor(1173, 109)
                            local Left = tblua:GetPixelColor(1168, 104)
                            if Top == "0x357887" then
                                tblua:PressKey(0x1B)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x53)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:TestMessage("Failed to make it the next patch of grass")
                            elseif Right == "0x357887" then
                                tblua:PressKey(0x1B)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x53)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:TestMessage("Failed to make it the next patch of grass")
                            elseif Bottom == "0x357887" then
                                tblua:PressKey(0x1B)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x53)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:TestMessage("Failed to make it the next patch of grass")
                            elseif Left == "0x357887" then
                                tblua:PressKey(0x1B)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x53)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:TestMessage("Failed to make it the next patch of grass")
                            end
                        end
                    end
                    local Top = tblua:GetPixelColor(1174, 96)
                    local Right = tblua:GetPixelColor(1183, 102)
                    local Bottom = tblua:GetPixelColor(1173, 109)
                    local Left = tblua:GetPixelColor(1168, 104)
                    if Top == "0x357887" then
                        tblua:PressKey(0x1B)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:TestMessage("Failed to make it the next patch of grass")
                    elseif Right == "0x357887" then
                        tblua:PressKey(0x1B)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:TestMessage("Failed to make it the next patch of grass")
                    elseif Bottom == "0x357887" then
                        tblua:PressKey(0x1B)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:TestMessage("Failed to make it the next patch of grass")
                    elseif Left == "0x357887" then
                        tblua:PressKey(0x1B)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:TestMessage("Failed to make it the next patch of grass")
                    end
                    b = 0
                    second = 0
                    third = 2
                end
                --full random movement
                local MovementSwitch = math.random(2)
                if MovementSwitch == 1 then
                    tblua:RandomArea()
                elseif MovementSwitch == 2 then
                    tblua:CircleArea()
                end
            end

            --loop if minimap not detected
            while tblua:IsInWorld() == false do
                tblua:StopMovement()
                --if bot is in fight
                if tblua:IsInFight() == true then
                    --Luma check positive (message and notification)
                    if tblua:CheckLuma() == true then
                        tblua:SendTelegramMessage("Luma Found!")
                        tblua:TestMessage("Luma Found!")
                        tblua:PressKey(0x71)
                    else
                        --Else no Luma, so run away
                        while tblua:IsInWorld() == false do
                            tblua:StopMovement()
                            if tblua:IsInFight() == true then
                                tblua:Sleep(xss)
                                tblua:PressKey(0x38)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x38)
                                b = b + 1
                            end
                        end
                    end
                end
            end

            if third > 1 then
                local srs = math.random(150,250)
                local mrs = math.random(375,450)
                local rs = math.random(500,600)
                local xmrs = math.random(700,800)
                local lrs = math.random(850,950)
                local xlrs = math.random(1950,2050)
                if c > enc then
                    tblua:StopMovement()
                    tblua:KeyDown(0x53)
                    tblua:KeyDown(0x41)
                    tblua:Sleep(xmrs)
                    tblua:PressKey(0x53)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x41)
                    tblua:KeyDown(0x41)
                    tblua:Sleep(rs)
                    tblua:PressKey(0x41)
                    tblua:KeyDown(0x53)
                    tblua:Sleep(lrs)
                    tblua:PressKey(0x53)
                    tblua:Sleep(xss)
                    if tblua:IsInFight() == true then
                        if tblua:CheckLuma() == true then
                            tblua:SendTelegramMessage("Luma Found!")
                            tblua:TestMessage("Luma Found!")
                            tblua:PressKey(0x71)
                        else
                            tblua:Sleep(xmrs)
                            tblua:PressKey(0x38)
                            tblua:Sleep(xmrs)
                            tblua:PressKey(0x38)
                            tblua:Sleep(xlrs)
                            tblua:KeyDown(0x53)
                            tblua:KeyDown(0x41)
                            tblua:Sleep(mrs)
                            tblua:PressKey(0x53)
                            tblua:Sleep(xss)
                            tblua:PressKey(0x41)
                            tblua:Sleep(xss)
                            tblua:KeyDown(0x41)
                            tblua:Sleep(rs)
                            tblua:PressKey(0x41)
                            tblua:KeyDown(0x53)
                            tblua:Sleep(rs)
                            tblua:PressKey(0x53)
                            tblua:Sleep(xss)
                            c = 0
                            third = 0
                            fourth = 2
                            local Top = tblua:GetPixelColor(1174, 96)
                            local Right = tblua:GetPixelColor(1183, 102)
                            local Bottom = tblua:GetPixelColor(1173, 109)
                            local Left = tblua:GetPixelColor(1168, 104)
                            if Top == "0x357887" then
                                tblua:PressKey(0x1B)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x53)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:TestMessage("Failed to make it the next patch of grass")
                            elseif Right == "0x357887" then
                                tblua:PressKey(0x1B)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x53)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:TestMessage("Failed to make it the next patch of grass")
                            elseif Bottom == "0x357887" then
                                tblua:PressKey(0x1B)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x53)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:TestMessage("Failed to make it the next patch of grass")
                            elseif Left == "0x357887" then
                                tblua:PressKey(0x1B)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x44)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x53)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x46)
                                tblua:Sleep(xss)
                                tblua:TestMessage("Failed to make it the next patch of grass")
                            end
                        end
                    end
                    local Top = tblua:GetPixelColor(1174, 96)
                    local Right = tblua:GetPixelColor(1183, 102)
                    local Bottom = tblua:GetPixelColor(1173, 109)
                    local Left = tblua:GetPixelColor(1168, 104)
                    if Top == "0x357887" then
                        tblua:PressKey(0x1B)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:TestMessage("Failed to make it the next patch of grass")
                    elseif Right == "0x357887" then
                        tblua:PressKey(0x1B)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:TestMessage("Failed to make it the next patch of grass")
                    elseif Bottom == "0x357887" then
                        tblua:PressKey(0x1B)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:TestMessage("Failed to make it the next patch of grass")
                    elseif Left == "0x357887" then
                        tblua:PressKey(0x1B)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x46)
                        tblua:Sleep(xss)
                        tblua:TestMessage("Failed to make it the next patch of grass")
                    end
                    c = 0
                    third = 0
                    fourth = 2
                end
                --full random movement
                local MovementSwitch = math.random(2)
                if MovementSwitch == 1 then
                    tblua:RandomArea()
                elseif MovementSwitch == 2 then
                    tblua:CircleArea()
                end
            end

            --loop if minimap not detected
            while tblua:IsInWorld() == false do
                tblua:StopMovement()
                --if bot is in fight
                if tblua:IsInFight() == true then
                    --Luma check positive (message and notification)
                    if tblua:CheckLuma() == true then
                        tblua:SendTelegramMessage("Luma Found!")
                        tblua:TestMessage("Luma Found!")
                        tblua:PressKey(0x71)
                    else
                        --Else no Luma, so run away
                        while tblua:IsInWorld() == false do
                            if tblua:IsInFight() == true then
                                tblua:Sleep(xss)
                                tblua:PressKey(0x38)
                                tblua:Sleep(xss)
                                tblua:PressKey(0x38)
                                c = c + 1
                            end
                        end
                    end
                end
            end


            if fourth > 1 then
                local srs = math.random(150,250)
                local mrs = math.random(375,450)
                local rs = math.random(500,600)
                local xmrs = math.random(650,750)
                local lrs = math.random(950,1050)
                local xlrs = math.random(1950,2050)
              if d > enc then
                  tblua:StopMovement()
                  tblua:KeyDown(0x53)
                  tblua:KeyDown(0x44)
                  tblua:Sleep(lrs)
                  tblua:PressKey(0x53)
                  tblua:Sleep(xss)
                  tblua:PressKey(0x44)
                  tblua:KeyDown(0x44)
                  tblua:Sleep(rs)
                  tblua:PressKey(0x44)
                  if tblua:IsInFight() == true then
                    if tblua:CheckLuma() == true then
                        tblua:SendTelegramMessage("Luma Found!")
                        tblua:TestMessage("Luma Found!")
                        tblua:PressKey(0x71)
                    else
                        tblua:Sleep(xmrs)
                        tblua:PressKey(0x38)
                        tblua:Sleep(xmrs)
                        tblua:PressKey(0x38)
                        tblua:Sleep(xlrs)
                        tblua:KeyDown(0x53)
                        tblua:KeyDown(0x44)
                        tblua:Sleep(xmrs)
                        tblua:PressKey(0x53)
                        tblua:Sleep(xss)
                        tblua:PressKey(0x44)
                        tblua:Sleep(xss)
                        tblua:KeyDown(0x44)
                        tblua:Sleep(rs)
                        tblua:PressKey(0x44)
                        d = 0
                        first = 2
                        fourth = 0
                        local Top = tblua:GetPixelColor(1174, 96)
                        local Right = tblua:GetPixelColor(1183, 102)
                        local Bottom = tblua:GetPixelColor(1173, 109)
                        local Left = tblua:GetPixelColor(1168, 104)
                        if Top == "0x357887" then
                          tblua:PressKey(0x1B)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x53)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x46)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x46)
                          tblua:Sleep(xss)
                          tblua:TestMessage("Failed to make it the next patch of grass")
                        elseif Right == "0x357887" then
                          tblua:PressKey(0x1B)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x53)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x46)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x46)
                          tblua:Sleep(xss)
                          tblua:TestMessage("Failed to make it the next patch of grass")
                        elseif Bottom == "0x357887" then
                          tblua:PressKey(0x1B)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x53)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x46)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x46)
                          tblua:Sleep(xss)
                          tblua:TestMessage("Failed to make it the next patch of grass")
                        elseif Left == "0x357887" then
                          tblua:PressKey(0x1B)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x44)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x53)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x46)
                          tblua:Sleep(xss)
                          tblua:PressKey(0x46)
                          tblua:Sleep(xss)
                          tblua:TestMessage("Failed to make it the next patch of grass")
                          end
                      end
                  end
                  local Top = tblua:GetPixelColor(1174, 96)
                  local Right = tblua:GetPixelColor(1183, 102)
                  local Bottom = tblua:GetPixelColor(1173, 109)
                  local Left = tblua:GetPixelColor(1168, 104)
                  if Top == "0x357887" then
                    tblua:PressKey(0x1B)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x53)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x46)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x46)
                    tblua:Sleep(xss)
                    tblua:TestMessage("Failed to make it the next patch of grass")
                  elseif Right == "0x357887" then
                    tblua:PressKey(0x1B)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x53)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x46)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x46)
                    tblua:Sleep(xss)
                    tblua:TestMessage("Failed to make it the next patch of grass")
                  elseif Bottom == "0x357887" then
                    tblua:PressKey(0x1B)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x53)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x46)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x46)
                    tblua:Sleep(xss)
                    tblua:TestMessage("Failed to make it the next patch of grass")
                  elseif Left == "0x357887" then
                    tblua:PressKey(0x1B)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x44)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x53)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x46)
                    tblua:Sleep(xss)
                    tblua:PressKey(0x46)
                    tblua:Sleep(xss)
                    tblua:TestMessage("Failed to make it the next patch of grass")
                  end
                  d = 0
                  first = 2
                  fourth = 0
              end
              --full random movement
              local MovementSwitch = math.random(2)
              if MovementSwitch == 1 then
                  tblua:RandomArea()
              elseif MovementSwitch == 2 then
                  tblua:CircleArea()
                end
            end
                  --loop if minimap not detected
                  while tblua:IsInWorld() == false do
                      tblua:StopMovement()
                      --if bot is in fight
                      if tblua:IsInFight() == true then
                        tblua:StopMovement()
                          --Luma check positive (message and notification)
                          if tblua:CheckLuma() == true then
                              tblua:SendTelegramMessage("Luma Found!")
                              tblua:TestMessage("Luma Found!")
                              tblua:PressKey(0x71)
                          else
                              --Else no Luma, so run away
                              while tblua:IsInWorld() == false do
                                  if tblua:IsInFight() == true then
                                      tblua:Sleep(xss)
                                      tblua:PressKey(0x38)
                                      tblua:Sleep(xss)
                                      tblua:PressKey(0x38)
                                      d = d + 1
                                  end
                              end
                          end
                      end
                  end


      end
    end
else
    tblua:TestMessage("Error: Not ready to start the script")
end
