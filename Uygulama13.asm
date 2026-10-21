
_main:

;Uygulama13.c,2 :: 		void main() {
;Uygulama13.c,3 :: 		TRISB=0B00000000;
	CLRF       TRISB+0
;Uygulama13.c,4 :: 		TRISD=0B00000001;
	MOVLW      1
	MOVWF      TRISD+0
;Uygulama13.c,6 :: 		while(1){
L_main0:
;Uygulama13.c,8 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Uygulama13.c,9 :: 		PORTB=255;
	MOVLW      255
	MOVWF      PORTB+0
;Uygulama13.c,10 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
	NOP
	NOP
;Uygulama13.c,11 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama13.c,12 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
	NOP
	NOP
;Uygulama13.c,13 :: 		}else{
	GOTO       L_main5
L_main2:
;Uygulama13.c,14 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama13.c,15 :: 		}
L_main5:
;Uygulama13.c,16 :: 		}
	GOTO       L_main0
;Uygulama13.c,17 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
