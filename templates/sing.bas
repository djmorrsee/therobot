b0 = 2
main:
	if pinC.6 = 1 then goto doNoise
	b0 = 1
	goto main
	
doNoise:
	sound B.2, (b0, 50)
	let b0 = b0 * b0
	goto main