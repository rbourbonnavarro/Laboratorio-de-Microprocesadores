.INCLUDE "M328PDEF.INC"

	LDI R16, 0x08
	OUT DDRC, R16
	OUT PORTC, R16

aca:

	EOR R20, R20
	EOR R21, R21
	EOR R22, R22

	


da_loop:

	da_loop_2:

		da_loop_3:

			INC R22
			CPI R22, 0xFF
			BRNE da_loop_3

		INC R21
		CPI R21, 0xFF
		BRNE da_loop_2

	INC R20
	CPI R20, 0x04
	BRNE da_loop

	
	IN R24, PORTC 
	LDI R25, 0x08
	EOR R24, R25
	OUT PORTC, R24

	RJMP aca

