symbol dist_mult = 500
symbol p_time = 320
symbol sw = {{ size }}
symbol sh = {{ size }}

main:
	goto doSquare

doSquare:
	symbol ww = sw * dist_mult
	symbol wh = sh * dist_mult

	; Go Straight
	forward A
	forward B
	
	; Pause for width duration
	pause ww
	
	; Stop
	halt A
	halt B
	
	; Turn Right
	forward B
	pause p_time
	
	; Stop
	halt A
	halt B
	
	; Go Straight
	forward A
	forward B
	
	; Pause for height duration
	pause wh
	
	; Stop
	halt A
	halt B
	
	
	; Turn Right
	forward B
	pause p_time
	
	; Stop
	halt A
	halt B
	
	; Go Straight
	forward A
	forward B
	
	; Pause for width duration
	pause ww
	
	; Stop
	halt A
	halt B
	
	; Turn Right
	forward B
	pause p_time
	
	; Stop
	halt A
	halt B
	
	; Go Straight
	forward A
	forward B
	
	; Pause for height duration
	pause wh
	
	; Stop
	halt A
	halt B
	
	
	; Turn Right
	forward B
	pause p_time
	
	; Stop
	halt A
	halt B
	
	goto finally
	
finally:
	end