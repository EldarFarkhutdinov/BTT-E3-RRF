; homez.g
; called to home the Z axis
;
; generated by RepRapFirmware Configuration Tool v3.1.10+4-LPC on Tue Jan 19 2021 17:25:01 GMT+0800 (中国标准时间)
;G91               ; relative positioning
;G1 H2 Z5 F6000    ; lift Z relative to current position
;G1 H1 Z-255 F1800 ; move Z down until the endstop is triggered
;G92 Z0            ; set Z position to axis minimum (you may want to adjust this)

; Uncomment the following lines to lift Z after probing
;G91              ; relative positioning
;G1 Z5 F100       ; lift Z relative to current position
;G90              ; absolute positioning

;///+EL 16.10.2021
; ################# Home Z Preparation ################

G91 															; Relative mode
G1 H2 Z5 F5000													; Lower the bed
G90																; Back to absolute positioning
G1 X120 Y120 F10000 		 										; Move to the center of the bed. Adjust to the co-ordinates required for the centre of your bed

; ################# Home Z Preparation ################

M558 F250 				 										; Set the probing speed
G30					 											; Probe a single point
M558 F30 				 										; Set a slower probing speed
G30					 											; Probe a single point
;///-EL 16.10.2021