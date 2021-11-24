; Written by Rick Torres Jr. https://github.com/RickTorresJr
; 
; Set the Tray Icon for this script using the Relative Path of the script
I_Icon =  %A_ScriptDir%\pathfinder.ico
IfExist, %I_Icon%
    Menu, Tray, Icon, %I_Icon%

; Script only works when Path of Exile is the active window
#IfWinActive, ahk_class POEWindowClass
;The key (or mouse button) you press to activate the script. For a list of supported "keys" and combinations, see https://autohotkey.com/docs/Hotkeys.htm
;XButton1 = "Back"-Button on my mouse. For a complete list of special keys, see https://autohotkey.com/docs/KeyList.htm

; Pressing the Pause button suspends all Hotkeys until pressed again
;pause::suspend
;NumpadEnter::suspend
; Pressing the \ (Backslash) button suspends all Hotkeys until pressed again
\::suspend



; Send Ctrl + e
;   send, ^e




; Remap NumberPad * to send Tab
; Tab (NumberPad *)
NumpadMult::
Send, {Tab}
return

;Remap Number Pad Minus Sign to send Esc
NumpadSub::
Send, {Escape}
return


;Remap Number Pad Plus Sign to send F
NumpadAdd::
Send, f
return

; Remap Number Pad 0 to send F
; Dash (NumberPad 0 and F)
Numpad0::
Send, f
return


; Remap NumberPad 4 to send Q
; Blast Rain (NumberPad 4 and Q)
Numpad4::
Send, q
return
; Remap NumberPad 7 to send Ctrl + Q
; Lightning Golem (NumberPad 7 and Ctrl + Q)
Numpad7::
Send, ^q
return

; Remap NumberPad 5 to send W
; Decoy Totem (NumberPad 5 and W)
Numpad5::
Send, w
return
; Remap NumberPad 8 to send Ctrl + W
; Malevalence (NumberPad 7 and Ctrl + W)
Numpad8::
Send, ^w
return

;Begin Vaal Blight (E) and Vaal Blight (R)
Numpad3::
random, delayr, 435, 450
Send, e
Sleep, %delayr%
Send, r
return


;Begin Vaal Blight (E) and Vaal Blight (R)
Numpad6::
random, delayr, 435, 450

Send, e
Sleep, %delayr%
Send, r
return


;;; Begin Movement Macro ;;;
; Movement Speed Flask (5) and Phase Run (Crtl + T)
NumpadDot::
random, delay5, 47, 80

Send, 5
Sleep, %delay5%
Send, t
;Send, ^t
return

;Begin Blood Rage (Ctrl + E) Immortal Call (Ctrl + R) Enduring Cry (Ctrl + T) Phase Run (T) and All Flasks (1-5)
Numpad1::
random, delay1, 40, 60
random, delay2, 52, 63
random, delay3, 60, 65
random, delay4, 58, 77
random, delay5, 47, 80

Sleep, %delay1%
Send, 1
Sleep, %delay2%
Send, 2
Sleep, %delay3%
Send, 3
Sleep, %delay4%
Send, 4
Sleep, %delay5%
Send, 5
;Send, ^e
;Send, ^r
Send, t
;Send, ^t
return


;Begin Blood Rage (Ctrl + E) Immortal Call (Ctrl + R) Enduring Cry (Ctrl + T) Phase Run (T) and Secondary Flasks (2-5)
Numpad2::
random, delay2, 52, 63
random, delay3, 60, 65
random, delay4, 58, 77
random, delay5, 47, 80

Sleep, %delay2%
Send, 2
Sleep, %delay3%
Send, 3
Sleep, %delay4%
Send, 4
Sleep, %delay5%
Send, 5
;Send, ^e
;Send, ^r
Send, t
;Send, ^t

return

/*
;Spacebar = Right Click
This method simulates holding down the mouse button instead of
repeating the key. It also bypasses the System Character Repeat
delay located in Keyboard Properties
*/
Space::
Send, {RButton Down}
; Wait for Spacebar to be released
KeyWait, Space
Send, {RButton Up}
return


; Shift + Spacebar = Inventory (i)
+Space::
Send, {i}
return

; Shift + Alt
; When the hotkey fires, its key's native function will not be blocked (hidden from the system)
~LShift & LAlt:: 
Send, {i}
return

~LAlt & ~LShift:: 
Send, {i}
return