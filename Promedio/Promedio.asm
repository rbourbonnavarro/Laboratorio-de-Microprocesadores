.INCLUDE "M328PDEF.INC"

	LDI R16, 85
	STS 0x100, R16
	LDI R16, 72
	STS 0x101, R16
	LDI R16, 180
	STS 0x102, R16
	LDI R16, 132
	STS 0x103, R16
	LDI R16, 227
	STS 0x104, R16
	LDI R16, 73
	STS 0x105, R16
	LDI R16, 111
	STS 0x106, R16
	LDI R16, 109
	STS 0x107, R16
	LDI R16, 248
	STS 0x108, R16
	LDI R16, 61
	STS 0x109, R16
	LDI R16, 82
	STS 0x10A, R16
	LDI R16, 58
	STS 0x10B, R16
	LDI R16, 133
	STS 0x10C, R16
	LDI R16, 20
	STS 0x10D, R16
	LDI R16, 139
	STS 0x10E, R16
	LDI R16, 124
	STS 0x10F, R16

	LDI R17, 1
	LDI R20, 0
	LDS R16, 0x100
	ADD R20, R16
	LDS R16, 0x101
	ADD R20, R16
	BRCS carry
	RJMP cont
carry: ADD R21, R17
cont:
	LDS R16, 0x102
	ADD R20, R16
	BRCS carry2
	RJMP cont2
carry2: ADD R21, R17
cont2:
LDS R16, 0x103
	ADD R20, R16
	BRCS carry3
	RJMP cont3
carry3: ADD R21, R17
cont3:
LDS R16, 0x104
	ADD R20, R16
	BRCS carry4
	RJMP cont4
carry4: ADD R21, R17
cont4:
LDS R16, 0x105
	ADD R20, R16
	BRCS carry5
	RJMP cont5
carry5: ADD R21, R17
cont5:
LDS R16, 0x106
	ADD R20, R16
	BRCS carry6
	RJMP cont6
carry6: ADD R21, R17
cont6:
LDS R16, 0x107
	ADD R20, R16
	BRCS carry7
	RJMP cont7
carry7: ADD R21, R17
cont7:
LDS R16, 0x108
	ADD R20, R16
	BRCS carry8
	RJMP cont8
carry8: ADD R21, R17
cont8:
LDS R16, 0x109
	ADD R20, R16
	BRCS carry9
	RJMP cont9
carry9: ADD R21, R17
cont9:
LDS R16, 0x10A
	ADD R20, R16
	BRCS carryA
	RJMP cont
carryA: ADD R21, R17
contA:
LDS R16, 0x10B
	ADD R20, R16
	BRCS carryB
	RJMP contB
carryB: ADD R21, R17
contB:
LDS R16, 0x10C
	ADD R20, R16
	BRCS carryC
	RJMP contC
carryC: ADD R21, R17
contC:
LDS R16, 0x10D
	ADD R20, R16
	BRCS carryD
	RJMP contD
carryD: ADD R21, R17
contD:
LDS R16, 0x10E
	ADD R20, R16
	BRCS carryE
	RJMP contE
carryE: ADD R21, R17
contE:
LDS R16, 0x10F
	ADD R20, R16
	BRCS carryF
	RJMP contF
carryF: ADD R21, R17
contF:

	LDI R16, 16
	CLR R25

asd:
	INC R25
	SUBI R20, 16
	BRSH asd
	SUBI R21, 1
	BRSH asd
	DEC R25
	ADD R20, R16



	



	
	


	

	
