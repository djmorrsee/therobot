b0 = 0
b1 = {{ edges }}

symbol edge_duration = 1000 * {{ length }}
symbol turn_duration = 2000 / {{ edges }}

main:
	if pinC.6 = 1 then goto start
	goto main
	
start:
	if b0 < b1 then doLine
	let b0 = 0
	goto main
	
doLine:
	forward A
	forward B
	pause edge_duration
	halt A
	halt B
	forward A
	pause turn_duration
	halt A
	
	inc b0

	goto start
	
finally:
	end