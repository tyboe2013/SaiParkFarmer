--Testing
import("TemBot.Lua.TemBotLua")

--Registering the Temtem Window
tblua:RegisterTemTemWindow()
tblua:GetAreaColor()
--PATCH 1: CHANGE TO 2 TO START AT PATCH ONE CHANGE TO 0 IF NOT USING IT
first = 2
--PATCH 2: CHANGE TO 2 TO START AT PATCH ONE CHANGE TO 0 IF NOT USING IT
second = 0
--HOW MANY ENCOUNTERS YOU WANT BEFORE IT CHANGES TO A NEW PATCH OF GRASS
enc = math.random(50,100)
--DO NOT TOUCH
third = 0
--DO NOT TOUCH
fourth = 0
--Counter variable for encounter
a = 0
--extra small sleep
xss = math.random(200, 300)
--medium sleep
mds = math.random(700, 900)
--Step variable
aone = 0

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
                        tblua:StopMovement()
                        if aone > 0 then
                            repeat
                                tblua:KeyDown(0x41)
                                tblua:Sleep(100)
                                aone = aone + 1
                            until aone > 14 or tblua:IsInWorld() == false

                            if aone > 14 then
                                tblua:KeyUp(0x41)
                                tblua:KeyDown(0x53)
                                tblua:Sleep(800)
                                tblua:KeyUp(0x53)
                                aone = 0
                                first = 0
                                a = 0
                                second = 2
                                goto endfo
                            end
                        end
                    end

                    while tblua:IsInFight() == true do
                        --if bot is in fight
                        --Luma check positive (message and notification)
                        tblua:StopMovement()
                        tblua:KeyUp(0x53)
                        tblua:KeyUp(0x41)
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
                end
                --full random movement
                repeat
                    tblua:RandomArea()
                until tblua:IsInWorld() == false
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
                    local sr = tblua:GetPixelColor(1218, 77)
                    if sr == ("0x70AB85") then
                        ::stopo::
                        while tblua:IsInWorld() == true do
                            tblua:StopMovement()
                            if aone > 0 then
                                repeat
                                    tblua:KeyDown(0x57)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 10 or tblua:IsInWorld() == false
                                tblua:KeyUp(0x57)
                                repeat
                                    tblua:KeyDown(0x44)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 25 or tblua:IsInWorld() == false

                                if aone > 25 then
                                    tblua:KeyUp(0x44)
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
                            tblua:KeyUp(0x57)
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
                                    aone = aone + 1
                                until aone > 10 or tblua:IsInWorld() == false
                                tblua:KeyUp(0x57)
                                repeat
                                    tblua:KeyDown(0x44)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 30 or tblua:IsInWorld() == false

                                if aone > 30 then
                                    tblua:KeyUp(0x44)
                                    aone = 0
                                    second = 0
                                    a = 0
                                    first = 2
                                    goto endst
                                end
                            end
                        end

                        while tblua:IsInFight() == true do
                            --if bot is in fight
                            --Luma check positive (message and notification)
                            tblua:KeyUp(0x44)
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
                repeat
                    tblua:RandomArea()
                until tblua:IsInWorld() == false
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
                    ::ttopo::
                    while tblua:IsInWorld() == true do
                        if aone > 0 then
                            tblua:StopMovement()
                            repeat
                                tblua:KeyDown(0x44)
                                tblua:Sleep(100)
                                aone = aone + 1
                            until aone > 20 or tblua:IsInWorld() == false

                            if aone > 20 then
                                tblua:KeyUp(0x44)
                                tblua:KeyDown(0x53)
                                tblua:Sleep(1000)
                                tblua:PressKey(0x53)
                                aone = 0
                                third = 0
                                a = 0
                                fourth = 2
                                goto endto
                            end
                        end
                    end

                    while tblua:IsInFight() == true do
                        --if bot is in fight
                        --Luma check positive (message and notification)
                        tblua:StopMovement()
                        tblua:KeyUp(0x44)
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
                end
                --full random movement
                repeat
                    tblua:RandomArea()
                until tblua:IsInWorld() == false
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
                if a > enc then
                    aone = 1
                    local sr = tblua:GetPixelColor(1218, 77)
                    if sr == ("0x70AB85") then
                        ::stopo::
                        while tblua:IsInWorld() == true do
                            tblua:StopMovement()
                            if aone > 0 then
                                repeat
                                    tblua:KeyDown(0x57)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 10 or tblua:IsInWorld() == false
                                tblua:KeyUp(0x57)
                                repeat
                                    tblua:KeyDown(0x44)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 25 or tblua:IsInWorld() == false

                                if aone > 25 then
                                    tblua:KeyUp(0x44)
                                    aone = 0
                                    fourth = 0
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
                            tblua:KeyUp(0x57)
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
                                    aone = aone + 1
                                until aone > 25 or tblua:IsInWorld() == false
                                tblua:KeyUp(0x57)
                                repeat
                                    tblua:KeyDown(0x41)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 25 or tblua:IsInWorld() == false

                                if aone > 40 then
                                    tblua:KeyUp(0x41)
                                    aone = 0
                                    fourth = 0
                                    a = 0
                                    third = 2
                                    goto endst
                                end
                            end
                        end

                        while tblua:IsInFight() == true do
                            --if bot is in fight
                            --Luma check positive (message and notification)
                            tblua:KeyUp(0x41)
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
                repeat
                    tblua:RandomArea()
                until tblua:IsInWorld() == false
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
