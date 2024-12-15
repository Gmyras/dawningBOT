CoordMode, Pixel, Screen
SetKeyDelay, 20
detect = 0
JoinMsg = 0
TimeMsg = 0
NoPlayer = 0
customcolor := "000000"
gui +lastfound +alwaysontop -caption +toolwindow
gui, color, %customcolor%
gui, font, s32, verdana
gui, add, text, vmytext cwhite, XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX`nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
winset, transcolor, %customcolor% 255

OpenOrShowAppBasedOnExeName(AppAddress)
{
	AppExeName := SubStr(AppAddress, InStr(AppAddress, "\", false, -1) + 1)
 
    IfWinExist ahk_exe %AppExeName%
	{
		IfWinActive
		{
			WinMinimize
			Return
		}
		else
		{
			WinActivate
			Return
		}
	}
	else
	{
		Run, %AppAddress%, UseErrorLevel
        If ErrorLevel
        {
            Msgbox, File %AppAddress% Not Found
            Return
        }
		else
		{
			WinWait, ahk_exe %AppExeName%
			WinActivate ahk_exe %AppExeName%
			Return
		}
	}
}



Loop, 120 {
    guicontrol,, mytext, Main 120 iteration
    ImageSearch, , , 0, 0, 1920, 1080, *5 Z:\D2\bot_dawning\Images\BANNERORBIT.png
    If ErrorLevel = 0
        Goto, Start

    ImageSearch, , , 0, 0, 1920, 1080, *5 Z:\D2\bot_dawning\Images\RADARSMALL.png
    If ErrorLevel = 0
        Goto, Helm

    ImageSearch, , , 0, 0, 1920, 1080, *5 Z:\D2\bot_dawning\Images\BANNER.png
    If ErrorLevel = 0
        Goto, SelectScan

    Sleep, 500
}
Goto, Crash

HelmRetry:
    sleep, 1000
    Send, {LButton}
    Sleep, 200
    Send, {LButton}
    Sleep, 500
    Send, {Tab}
    Sleep, 2000
    MouseMove, 1190, 150, 5
    Sleep, 500
    Loop, 6 {
        ImageSearch, , , 0, 0, 1920, 1080, *5 Z:\D2\bot_dawning\Images\MAP.png
        If ErrorLevel = 0
            Goto, HelmTravel
        Sleep, 500
    }
    Send, {Enter}
    Sleep, 200
    Send, test_1.
    Sleep, 200
    Send, {Enter}
    Sleep, 200
    Send, {Enter}
    Sleep, 2000
    MouseMove, 1190, 150, 5
    Sleep, 500
    Loop, 6 {
        ImageSearch, , , 0, 0, 1920, 1080, *5 Z:\D2\bot_dawning\Images\MAP.png
        If ErrorLevel = 0
            Goto, HelmTravel
        Sleep, 500
    }

Start:
    Sleep, 2000
    Send, M
    Sleep, 2000

HelmTravel:
    MouseMove, 320, 300, 5
    Sleep, 200
    Send, {LButton}
    Sleep, 1500
    MouseMove, 1600, 900, 5
    Sleep, 500
    Send, {LButton}
    Sleep, 4000
    MouseMove, 480, 770, 5
    Sleep, 500
    Send, {LButton}
    Sleep, 1500
    MouseMove, 1600, 900, 5
    Sleep, 500
    Send, {LButton}
    Sleep, 20000
    Sleep, 2000
    Loop, {
        Sleep, 200
        ImageSearch, , , 0, 0, 1920, 1080, *5 Z:\D2\bot_dawning\Images\BANNERORBIT.png
        If ErrorLevel = 0
            Goto, Start

        ImageSearch, , , 0, 0, 1920, 1080, *15 Z:\D2\bot_dawning\Images\RADARSMALL.png
        If ErrorLevel = 0
            Goto, Helm

        Sleep, 200
    }
Helm:
    Send, {Left}
    Sleep, 500
    Send, {F1}
    Sleep, 1000
    MouseMove, 1716, 48, 5
    Sleep, 500
    Send, {LButton}
    Sleep, 1000
    MouseMove, 297, 779, 5
    Sleep, 500
    Send, {LButton}
    Sleep, 1000
    MouseMove, 1480, 251, 5
    Sleep, 500
    Send, {LButton}
    Sleep, 500
    Send, {LButton}
    Sleep, 500
    Send, {LButton}
    Sleep, 100
    Sleep, 200
    Send, {LButton}
    Sleep, 500
    Send, {LButton}
    Sleep, 500
    Send, {Esc}
    Sleep, 500
    Send, {Left}
    Sleep, 500
    Send, M
    Sleep, 500
    Send, D
    Sleep, 2000
    MouseMove, 1193, 158, 5
    Sleep, 500
    Send {LButton}
    Sleep, 1000
    MouseMove, 1500, 500, 5
    Sleep, 500
    Send {LButton}
    Sleep, 1000
    loop, 420 {
        ImageSearch, , , 1390, 148, 1880, 255, *15 Z:\D2\bot_dawning\Images\1.png
        if (ErrorLevel = 2)
            Sleep, 500
        else if (ErrorLevel = 1)
            Goto, Welcome
        else
            Sleep, 500
        Sleep, 1000
    }
    NoPlayer := 1
    Goto, Welcome
Welcome:
    Sleep, 2000 
    Send, {Enter}
    Sleep, 200
    Send, Welcome Guardian. Please stay on stream https://www.twitch.tv/mrgmyras, If you own Amazon Prime, you can subscribe for free once per month!
    Sleep, 200
    Send, {Enter}
    Sleep, 2000
    Goto, Closing
Closing:
    Sleep, 500
    Send, {F1}
    Sleep, 1000
    MouseMove, 1716, 48, 5
    Sleep, 500
    Send, {LButton}
    Sleep, 1000
    MouseMove, 297, 779, 5
    Sleep, 500
    Send, {LButton}
    Sleep, 1000
    MouseMove, 1777, 251, 5
    Sleep, 500
    Send, {LButton}
    Sleep, 500
    Send, {LButton}
    Sleep, 250
    Send, {LButton}
    Sleep, 500
    Send, {LButton}
    Sleep, 500
    Send, {Esc}
    Sleep, 2000
    Goto, End
End:
    Sleep, 1000
    Send, {Enter}
    Sleep, 200
    Send, Bot is leaving.
    Sleep, 200
    Send, {Enter}
    Sleep, 5000
    Send, {Esc}
    Sleep, 3000    
    MouseMove, 703, 592,5
    Sleep, 500
    Send, {LButton}
    Sleep, 1500
    Send, {Return}

SelectScan:
    loop, 100 {
        ImageSearch, , , 0, 0, 1920, 1080, Z:\D2\bot_dawning\Images\BANNER.png
        If ErrorLevel = 0
            Goto, Selecting

        Sleep, 500
    }
    Goto, Crash

Selecting:
    Sleep, 2000
    MouseMove, 1350, 675, 5
    Sleep, 500
    Send, {LButton}
    Sleep, 500
    run, AFKBot1.ahk
    ExitApp

Crash:
    Sleep, 200
    SendRaw, -
    Sleep, 100
    Send, {Enter}
    Sleep, 200
    Send, Bot seems to have crashed, Please try again in the next Lobby.
    Sleep, 200
    Send, {Enter}
    Sleep, 500
    Send, {Enter}
    Sleep, 500
    Send, {Enter}
    Sleep, 200
    Send, Bot seems to have crashed, Please try again in the next Lobby.
    Sleep, 200
    Send, {Enter}
    Sleep, 200
    Sleep, 2000

Empty:
    Sleep, 200
    Sleep, 300
    loop, 80 {
        ImageSearch, , , 0, 0, 1920, 1080, *40 Z:\D2\bot_dawning\Images\INTRO.png
        If ErrorLevel = 0
        {
            Send, {Enter}
            MouseMove, 930, 920, 5
            Send, {LButton}
            Sleep, 500
            Send, {LButton}
            Sleep, 1000
            Send, {LButton}
            Goto, SelectScan
        }
        Sleep, 1000
    }
    Sleep, 500
    MouseMove, 989, 1060, 5
    Sleep, 500
    Send, {LButton}
    Sleep, 500
    Send, {LButton}
    Sleep, 2000
    Send, {LButton}
    Goto, SelectScan

8::pause, toggle
