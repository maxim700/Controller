.include "m644def.inc"
.def temp=r16
.equ delay_t1 =255
.equ delay_t2 =255
.cseg
                     rjmp   reset

.org $001E rjmp timer1

.org $003E
             reset:
			         ldi    temp,  high(RAMEND)
					 out    SPH,   temp
					 ldi    temp,  low(RAMEND)
					 out    SPL,   temp

					 sbi    DDRC,  PC7
					 sbi    PORTC,  PC7
					 ///cbi	DDRA,	PA7
					

					 ldi    temp,  0b00000001
					 sts    TIMSK1,   temp
					
					 ldi    temp,  	0b10000000
					 out    SREG,   temp
					
					 ldi    temp,  0b00000100
					 sts    TCCR1B,   temp
 

             main:
			         ;sbic   PINA,  PA7
					 nop
					 rjmp   main
             
			 		


timer1:
	sbis   PINC,  PC7
	rjmp   light
    cbi    PORTC,  PC7
    ;ldi    temp, 0
                   			
	rjmp   exit
light:
	sbi    PORTC,  PC7			 		
exit:	
	reti

Delay:
		    ldi r21, delay_t1
	delay1: ldi r20, delay_t2
	delay2: dec r20
			brne delay2
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			nop
			dec r21
			brne delay1
    ret
