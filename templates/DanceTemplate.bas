b1 = {{ pokes }}
b0 = 0

symbol p = {{ delay }}

main:
	if pinC.6 = 1 then doSpin
	goto main
	
doSpin:

	forward A
	backward B
	pause p
	halt A
	halt B 
	if b1 = b0 then doDance
	inc b0
	goto main
	
doDance:
	forward A
	forward B
	pause p
	backward A
	backward B
	pause p
	forward A
	forward B
	pause p
	backward A
	backward B
	pause p
	forward A
	backward B
	pause p
	backward A
	forward B
	pause p
	forward A
	backward B
	pause p
	backward A
	forward B
	pause p
	halt A
	halt B
	b0 = 0
	goto main