
_main:

;Uygulama21.c,1 :: 		void main() {
;Uygulama21.c,3 :: 		TRISB=0;
	CLRF       TRISB+0
;Uygulama21.c,5 :: 		while(1){
L_main0:
;Uygulama21.c,6 :: 		PORTB=0B11111100;//0
	MOVLW      252
	MOVWF      PORTB+0
;Uygulama21.c,7 :: 		Delay_ms(1000);
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
;Uygulama21.c,9 :: 		PORTB=0B01100000; //1
	MOVLW      96
	MOVWF      PORTB+0
;Uygulama21.c,10 :: 		Delay_ms(1000);
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
;Uygulama21.c,12 :: 		PORTB=0B11011010; //2
	MOVLW      218
	MOVWF      PORTB+0
;Uygulama21.c,13 :: 		Delay_ms(1000);
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
;Uygulama21.c,14 :: 		PORTB=0B11110010; //3
	MOVLW      242
	MOVWF      PORTB+0
;Uygulama21.c,15 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
	NOP
	NOP
;Uygulama21.c,17 :: 		PORTB=0B01100110;//4
	MOVLW      102
	MOVWF      PORTB+0
;Uygulama21.c,18 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
	NOP
	NOP
;Uygulama21.c,19 :: 		PORTB = 0B10110110; // 5
	MOVLW      182
	MOVWF      PORTB+0
;Uygulama21.c,20 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;Uygulama21.c,22 :: 		PORTB = 0B10111110; // 6
	MOVLW      190
	MOVWF      PORTB+0
;Uygulama21.c,23 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;Uygulama21.c,25 :: 		PORTB = 0B11100000; // 7
	MOVLW      224
	MOVWF      PORTB+0
;Uygulama21.c,26 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
	NOP
	NOP
;Uygulama21.c,28 :: 		PORTB = 0B11111110; // 8
	MOVLW      254
	MOVWF      PORTB+0
;Uygulama21.c,29 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main10:
	DECFSZ     R13+0, 1
	GOTO       L_main10
	DECFSZ     R12+0, 1
	GOTO       L_main10
	DECFSZ     R11+0, 1
	GOTO       L_main10
	NOP
	NOP
;Uygulama21.c,31 :: 		PORTB = 0B11110110; // 9
	MOVLW      246
	MOVWF      PORTB+0
;Uygulama21.c,32 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
	NOP
	NOP
;Uygulama21.c,35 :: 		}
	GOTO       L_main0
;Uygulama21.c,36 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
