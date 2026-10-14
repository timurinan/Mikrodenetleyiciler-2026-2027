
_main:

;Uygulama4.c,2 :: 		void main() {
;Uygulama4.c,4 :: 		TRISB=0X00;  //b portunun tüm pinleri çýkýþ olarak ayarlandý...
	CLRF       TRISB+0
;Uygulama4.c,6 :: 		while(1){
L_main0:
;Uygulama4.c,8 :: 		PORTB=0X00;
	CLRF       PORTB+0
;Uygulama4.c,9 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
	NOP
	NOP
;Uygulama4.c,10 :: 		PORTB=0XFF;
	MOVLW      255
	MOVWF      PORTB+0
;Uygulama4.c,11 :: 		Delay_ms(1000);
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
;Uygulama4.c,12 :: 		}
	GOTO       L_main0
;Uygulama4.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
