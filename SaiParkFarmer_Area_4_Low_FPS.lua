--Testing
import("TemBot.Lua.TemBotLua")

--Registering the Temtem Window
tblua:RegisterTemTemWindow()
tblua:GetAreaColor()
--PATCH 1: CHANGE TO 2 TO START HERE, AT PATCH ONE CHANGE TO 0 IF NOT USING IT
first = 2
--PATCH 2: CHANGE TO 2 TO START HERE, AT PATCH ONE CHANGE TO 0 IF NOT USING IT
second = 0
--PATCH 3: CHANGE TO 2 TO START HERE, AT PATCH ONE CHANGE TO 0 IF NOT USING IT
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
--Random Encounter Counter
enc = math.random(50,100)

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
                    local ffl = tblua:GetPixelColor(1256, 104)
                    if ffl == "0x143F5A" then
                        ::ftopo::
                        while tblua:IsInWorld() == true do
                            tblua:StopMovement()
                            if aone > 0 then
                                repeat
                                    tblua:KeyDown(0x41)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 25 or tblua:IsInWorld() == false

                                if aone > 25 then
                                    tblua:KeyUp(0x41)
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
                    else
                        ::ftopt::
                        while tblua:IsInWorld() == true do
                            if aone > 0 then
                                tblua:StopMovement()
                                repeat
                                    tblua:KeyDown(0x41)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 15 or tblua:IsInWorld() == false

                                if aone > 15 then
                                    tblua:KeyUp(0x41)
                                    aone = 0
                                    first = 0
                                    a = 0
                                    second = 2
                                    goto endft
                                end
                            end
                        end

                        while tblua:IsInFight() == true do
                            --if bot is in fight
                            --Luma check positive (message and notification)
                            tblua:KeyUp(0x41)
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
                    local sup = tblua:GetPixelColor(1191, 143)
                    if sup == ("0x143F5A") then
                        ::stopo::
                        while tblua:IsInWorld() == true do
                            tblua:StopMovement()
                            if aone > 0 then
                                repeat
                                    tblua:KeyDown(0x57)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 30 or tblua:IsInWorld() == false

                                if aone > 30 then
                                    tblua:KeyUp(0x57)
                                    aone = 0
                                    second = 0
                                    a = 0
                                    third = 2
                                    goto endso
                                end
                            end
                        end

                        while tblua:IsInFight() == true do
                            --if bot is in fight
                            --Luma check positive (message and notification)
                            tblua:StopMovement()
                            tblua:KeyUp(0x57)
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
                                until aone > 20 or tblua:IsInWorld() == false

                                if aone > 20 then
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
                    local tdd = tblua:GetPixelColor(1255, 107)
                    if tdd == ("0x143F5A") then
                        ::ttopo::
                        while tblua:IsInWorld() == true do
                            if aone > 0 then
                                tblua:StopMovement()
                                repeat
                                    tblua:KeyDown(0x41)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 8 or tblua:IsInWorld() == false
                                tblua:KeyUp(0x41)
                                repeat
                                    tblua:KeyDown(0x53)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 28 or tblua:IsInWorld() == false

                                if aone > 28 then
                                    tblua:KeyUp(0x53)
                                    tblua:KeyDown(0x41)
                                    tblua:Sleep(800)
                                    tblua:PressKey(0x41)
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
                                    aone = aone + 1
                                until aone > 20 or tblua:IsInWorld() == false

                                if aone > 20 then
                                    tblua:KeyUp(0x53)
                                    aone = 0
                                    third = 0
                                    a = 0
                                    fourth = 2
                                    goto endtt
                                end
                            end
                        end

                        while tblua:IsInFight() == true do
                            --if bot is in fight
                            --Luma check positive (message and notification)
                            tblua:KeyUp(0x53)
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
                    local ffll = tblua:GetPixelColor(1249, 86)
                    if ffll == "0x357887" then
                        ::fftopo::
                        while tblua:IsInWorld() == true do
                            if aone > 0 then
                                tblua:StopMovement()
                                repeat
                                    tblua:KeyDown(0x53)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 5 or tblua:IsInWorld() == false
                                tblua:KeyUp(0x53)
                                repeat
                                    tblua:KeyDown(0x44)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 15 or tblua:IsInWorld() == false

                                if aone > 15 then
                                    tblua:KeyUp(0x44)
                                    aone = 0
                                    fourth = 0
                                    a = 0
                                    first = 2
                                    goto endffo
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
                        goto fftopo
                        ::endffo::
                    else
                        ::fftopt::
                        while tblua:IsInWorld() == true do
                            if aone > 0 then
                                repeat
                                    tblua:KeyDown(0x44)
                                    tblua:Sleep(100)
                                    aone = aone + 1
                                until aone > 15 or tblua:IsInWorld() == false

                                if aone > 15 then
                                    tblua:KeyUp(0x44)
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
                        goto fftopt
                        ::endfft::
                    end
                end
                repeat
                    tblua:RandomArea()
                until tblua:IsInWorld() == false
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
