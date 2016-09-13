.INCLUDE "M328PDEF.INC"

.EQU CANT_DATOS = 16
.ORG 0x00
	
	LDI R16, CANT_DATOS
	CLR R20
	CLR R21
	CLR R25
	LDI ZL, LOW(DATOS<<1)
	LDI ZH, HIGH(DATOS<<1)
	CALL PROMEDIAR
FIN:	RJMP FIN
	

PROMEDIAR:
	CALL SUMAR
	CALL DIVIDIR
	RET

SUMAR:
L1:	LPM R17, Z+
	ADD R20, R17
	BRCC L2
	INC R21
L2:	DEC R16
	BRNE L1
	RET

DIVIDIR:
	LDI R16, CANT_DATOS
L3:	INC R25
	SUBI R20, CANT_DATOS
	BRSH L3
	DEC R21
	BRPL L3
	DEC R25
	ADD R20, R16
	RET


	
.ORG 0x100

DATOS: .DB 100, 101, 54, 84, 71, 26, 98, 66, 35, 59, 11, 31, 45, 87, 15, 245


	
	


	

	
