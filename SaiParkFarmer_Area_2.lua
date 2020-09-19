import("TemBot.Lua.TemBotLua")

--Registering the Temtem Window
tblua:RegisterTemTemWindow()
tblua:GetAreaColor()
--PATCH 1: CHANGE TO 2 TO START AT PATCH ONE CHANGE TO 0 IF NOT USING IT
first = 2
--PATCH 2: CHANGE TO 2 TO START AT PATCH TWO CHANGE TO 0 IF NOT USING IT
second = 0
--PATCH 3: CHANGE TO 2 TO START AT PATCH ONE CHANGE TO 0 IF NOT USING IT
third = 0
--DO NOT TOUCH
fourth = 0
--HOW MANY ENCOUNTERS YOU WANT BEFORE IT CHANGES TO A NEW PATCH OF GRASS
enc = math.random(50,100)
--Counter variable for encounter
a = 0
--extra small sleep
xss = math.random(200, 300)
--medium sleep
mds = math.random(700, 900)
--Step variable
aone = 0

MovementSwitch = 1

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
                local ran = math.random(2)
                if a > enc then
                    aone = 1
                    ::ftopo::
                    while tblua:IsInWorld() == true do
                        if aone > 0 then
                            repeat
                                tblua:KeyDown(0x41)
                                tblua:Sleep(100)
                                tblua:KeyUp(0x41)
                                aone = aone + 1
                            until aone > 25 or tblua:IsInWorld() == false

                            if aone > 25 then
                                tblua:KeyUp(0x41)
                                repeat
                                    tblua:KeyDown(0x53)
                                    tblua:Sleep(100)
                                    tblua:KeyUp(0x53)
                                    aone = aone + 1
                                until aone > 28 or tblua:IsInWorld() == false

                                if aone > 28 then
                                    tblua:KeyUp(0x53)
                                    aone = 0
                                    first = 0
                                    a = 0
                                    second = 2
                                    goto endfo
                                end
                            end
                        end
                    end

                    while tblua:IsInFight() == true do
                        --if bot is in fight
                        --Luma check positive (message and notification)
                        tblua:StopMovement()
                        tblua:KeyUp(0x41)
                        tblua:KeyUp(0x53)
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
                    goto ftopo
                    ::endfo::
                    --[[else
                        ::ftopt::
                        while tblua:IsInWorld() == true do
                            if aone > 0 then
                                repeat
                                    tblua:KeyDown(0x57)
                                    tblua:Sleep(100)
                                    tblua:KeyUp(0x57)
                                    aone = aone + 1
                                until aone > 15 or tblua:IsInWorld() == false

                                if aone > 15 then
                                    tblua:KeyDown(0x57)
                                    tblua:Sleep(600)
                                    tblua:PressKey(0x57)
                                    tblua:KeyDown(0x41)
                                    tblua:Sleep(500)
                                    tblua:PressKey(0x41)
                                    aone = 0
                                    first = 0
                                    a = 0
                                    third = 2
                                    goto endft
                                end
                            end
                        end

                        while tblua:IsInFight() == true do
                            --if bot is in fight
                            --Luma check positive (message and notification)
                            tblua:PressKey(0x44)
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
                        goto ftopt
                        ::endft::
                    end]]--
                end
                --full random movement
                if MovementSwitch == 1 then
                    tblua:CircleArea()
                    local xd = math.random(100, 300)
                    tblua:Sleep(xd)
                    local MovementSwitch = 2
                elseif MovementSwitch == 2 then
                    tblua:RandomArea()
                    local xdd = math.random(600, 1200)
                    tblua:Sleep(xdd)
                    local MovementSwitch = 1
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
            --Second Patch of Grass
            if second > 1 then
                local ran = math.random(2)
                --Checks if this is ready to move
                if a > enc then
                    aone = 1
                    local sup = tblua:GetPixelColor(1117, 134)
                    if sup == ("0x357887") then
                        ::stopo::
                        while tblua:IsInWorld() == true do
                            if aone > 0 then
                                repeat
                                    tblua:KeyDown(0x44)
                                    tblua:Sleep(100)
                                    tblua:KeyUp(0x44)
                                    aone = aone + 1
                                until aone > 20 or tblua:IsInWorld() == false

                                if aone > 20 then
                                    tblua:KeyDown(0x44)
                                    tblua:Sleep(500)
                                    tblua:PressKey(0x44)
                                    aone = 0
                                    second = 0
                                    a = 0
                                    first = 2
                                    goto endso
                                end
                            end
                        end

                        while tblua:IsInFight() == true do
                            --if bot is in fight
                            --Luma check positive (message and notification)
                            tblua:StopMovement()
                            tblua:KeyUp(0x44)
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
                        goto stopo
                        ::endso::
                    else
                        ::stopt::
                        while tblua:IsInWorld() == true do
                            if aone > 0 then
                                repeat
                                    tblua:KeyDown(0x57)
                                    tblua:Sleep(100)
                                    tblua:KeyUp(0x57)
                                    aone = aone + 1
                                until aone > 18 or tblua:IsInWorld() == false

                                if aone > 18 then
                                    tblua:KeyUp(0x57)
                                    aone = 0
                                    second = 0
                                    a = 0
                                    third = 2
                                    goto endst
                                end
                            end
                        end

                        while tblua:IsInFight() == true do
                            --if bot is in fight
                            --Luma check positive (message and notification)
                            tblua:KeyUp(0x57)
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
                        goto stopt
                        ::endst::
                    end
                end
                --full random movement
                if MovementSwitch == 1 then
                    tblua:CircleArea()
                    local xd = math.random(100, 300)
                    tblua:Sleep(xd)
                    local MovementSwitch = 2
                elseif MovementSwitch == 2 then
                    tblua:RandomArea()
                    local xdd = math.random(600, 1200)
                    tblua:Sleep(xdd)
                    local MovementSwitch = 1
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
                                a = a + 1
                            end
                        end
                    end
                end
            end
            --Third Patch of Grass
            if third > 1 then
                local ran = math.random(2)
                if a > enc then
                    aone = 1
                    local tdl = tblua:GetPixelColor(1159, 41)
                    if ran == 1 then
                        ::ttopo::
                        while tblua:IsInWorld() == true do
                            if aone > 0 then
                                repeat
                                    tblua:KeyDown(0x53)
                                    tblua:Sleep(100)
                                    tblua:KeyUp(0x53)
                                    aone = aone + 1
                                until aone > 20 or tblua:IsInWorld() == false

                                if aone > 20 then
                                    aone = 0
                                    third = 0
                                    a = 0
                                    second = 2
                                    goto endto
                                end
                            end
                        end

                        while tblua:IsInFight() == true do
                            --if bot is in fight
                            --Luma check positive (message and notification)
                            tblua:StopMovement()
                            tblua:KeyUp(0x53)
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
                        goto ttopo
                        ::endto::
                    else
                        ::ttopt::
                        while tblua:IsInWorld() == true do
                            if aone > 0 then
                                repeat
                                    tblua:KeyDown(0x53)
                                    tblua:Sleep(100)
                                    tblua:KeyUp(0x53)
                                    aone = aone + 1
                                until aone > 15 or tblua:IsInWorld() == false

                                if aone > 15 then
                                    tblua:KeyDown(0x44)
                                    tblua:Sleep(2900)
                                    tblua:PressKey(0x44)
                                    aone = 0
                                    third = 0
                                    a = 0
                                    first = 2
                                    goto endtt
                                end
                            end
                        end

                        while tblua:IsInFight() == true do
                            --if bot is in fight
                            --Luma check positive (message and notification)
                            tblua:KeyUp(0x53)
                            tblua:KeyUp(0x44)
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
                        goto ttopt
                        ::endtt::
                    end
                end
                --full random movement
                if MovementSwitch == 1 then
                    tblua:CircleArea()
                    local xd = math.random(100, 300)
                    tblua:Sleep(xd)
                    local MovementSwitch = 2
                elseif MovementSwitch == 2 then
                    tblua:RandomArea()
                    local xdd = math.random(600, 1200)
                    tblua:Sleep(xdd)
                    local MovementSwitch = 1
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
                                a = a + 1
                            end
                        end
                    end
                end
            end

            if fourth > 1 then
                local ran = math.random(2)
                if a > enc then
                    aone = 1
                    if ran == 1 then
                        ::fftopo::
                        while tblua:IsInWorld() == true do
                            if aone > 0 then
                                repeat
                                    tblua:KeyDown(0x44)
                                    tblua:Sleep(100)
                                    tblua:KeyUp(0x44)
                                    aone = aone + 1
                                until aone > 10 or tblua:IsInWorld() == false

                                if aone > 10 then
                                    tblua:KeyDown(0x57)
                                    tblua:Sleep(1000)
                                    tblua:PressKey(0x57)
                                    aone = 0
                                    fourth = 0
                                    a = 0
                                    third = 2
                                    goto endffo
                                end
                            end
                        end

                        while tblua:IsInFight() == true do
                            --if bot is in fight
                            --Luma check positive (message and notification)
                            tblua:StopMovement()
                            tblua:PressKey(0x44)
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
                        goto fftopo
                        ::endffo::
                    end
                    if ran == 2 then
                        ::fftopt::
                        while tblua:IsInWorld() == true do
                            if aone > 1 then
                                repeat
                                    tblua:KeyDown(0x44)
                                    tblua:Sleep(100)
                                    tblua:KeyUp(0x44)
                                    aone = aone + 1
                                until aone > 10 or tblua:IsInWorld() == false

                                if aone > 10 then
                                    tblua:KeyDown(0x53)
                                    tblua:Sleep(800)
                                    tblua:PressKey(0x53)
                                    aone = 0
                                    fourth = 0
                                    a = 0
                                    first = 2
                                    goto endfft
                                end
                            end
                        end

                        while tblua:IsInFight() == true do
                            --if bot is in fight
                            --Luma check positive (message and notification)
                            tblua:PressKey(0x44)
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
                        goto fftopt
                        ::endfft::
                    end
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
                                a = a + 1
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
