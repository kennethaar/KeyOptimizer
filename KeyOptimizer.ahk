/*
KEYOPTIMIZER
Makes improvements to your keyboard so you too can become a keyboard ninja™.

This script makes holding the down the Nordic AltGr key transforms the letter keys on the home row into navigation keys (arrow keys /del/home/end/pgup/pgdn). It moves Enter, Backspace and Delete right below the home row. And lets you execute (Undo/Redo/Copy/Cut/Paste) without twisting your left pinky to reach the Ctrl key. With this simple AHK script you have all you need to turn your keyboard into a powerhouse of easily accessible shortcuts.

It takes a little time to get used to, but it is comfortable, fast and requires very little movement of your hands. These modifications also make you a keyboard agnostic ninja, letting you jump between your laptop and regular keyboard without missing a beat. As we know laptop keyboards always have some keys in unusual places because of their size constraints. With is script you don't have to relearn any keyboard, just use your right thumb to press AltGr and then press the corresponding letter key.

If you don't have the AltGr key, but a regular right alt key you might be out of luck, since it could seriously mess with other applications. This is because many apps use Alt as the accelerator key.

Thanks to T Kayne in the AHK Heroes group for the idea. See his much more advanced V1 AHK script here: https://github.com/1400883/hotkeys

*/

;------------------------------------------------------------------------------
; SETTINGS
;------------------------------------------------------------------------------
#Requires AutoHotkey v2.0+
#SingleInstance force
#MaxThreadsPerHotkey 1

;------------------------------------------------------------------------------
; Adds ICON to your tray. REMEMBER to put the ICO file in same folder as the script.
;------------------------------------------------------------------------------

TraySetIcon("Icon-KeyOptimizer.ico")

;------------------------------------------------------------------------------
; Icon Tip
;------------------------------------------------------------------------------
A_IconTip := "KEYOPTIMIZER`nUse AltGr to trigger:`nW,A,S,D moves`nH(Home)`nJ(End)`nU(PageUp)`nI(PageDown)`nB(Backspace)`nN(Enter)`nM(Backspace)`n,(Del)"


;------------------------------------------------------------------------------
; AltGr WASD
;------------------------------------------------------------------------------
<^>!w::Up
<^>!a::Left
<^>!s::Down
<^>!d::Right

;------------------------------------------------------------------------------
; AltGr Navigate line
;------------------------------------------------------------------------------
<^>!j::end		  ; J = End 
;<^>!e::end 		; My E is right besides the H key, So for me this key binding is more logical and in the right place.
<^>!h::home			; H = Home

;------------------------------------------------------------------------------
; AltGr Navigate page
;------------------------------------------------------------------------------
<^>!u::PgUp			; U = PageUp
<^>!i::PgDn			; I = PageDown
<^>!q::esc      ; Q = Esc

;------------------------------------------------------------------------------
; AltGr Edit
;------------------------------------------------------------------------------
<^>!,::delete		  ; , = Delete
;~ <^>!u::insert 	; I detest the insert key so it is turned off...
<^>!m::backspace	; M = Backspace (Merge)
<^>!n::enter		  ; N = eNter
<^>!c::^c			    ; More ergonomic Copy 	- Ctrl + C (ALtGr+C)
<^>!x::^x			    ; More ergonomic Cut 	- Ctrl + X (ALtGr+X)
<^>!y::^y			    ; More ergonomic Redo 	- Ctrl + Y (ALtGr+Y)
<^>!v::^v			    ; More ergonomic Paste	- Ctrl + V (ALtGr+V)
<^>!z::^z			    ; More ergonomic Undo	- Ctrl + Z (ALtGr+Z)

return
