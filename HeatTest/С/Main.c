#include <mega644p.h>

interrupt [16] void OFTimer1(void){  //прерывание по переполнению таймера 1
    
    if (PINC.7 == 1){PORTC = 0b00000000;}
    else{PORTC = 0b10000000;}
                         
    
}

void main(void){
  
//  OCR1AH = 0b10011000;   
//  OCR1AL = 0b10011001;
                    
    DDRC = 0b10000000;
    PORTC = 0b00000000;

    TIMSK1 = 0b00000001;
    SREG = 0b10000000;
    TCCR1B = 0b00000100;  
  
  
    while(1){
    #asm("nop"); 
    }
 
       
 }