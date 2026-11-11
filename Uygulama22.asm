
_main:

;Uygulama22.c,1 :: 		void main() {
;Uygulama22.c,3 :: 		TRISB=0;
	CLRF       TRISB+0
;Uygulama22.c,5 :: 		while(1){
L_main0:
;Uygulama22.c,7 :: 		PORTB = 0B00000011; // 0
	MOVLW      3
	MOVWF      PORTB+0
;Uygulama22.c,8 :: 		Delay_ms(1000);
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
;Uygulama22.c,10 :: 		PORTB = 0B10011111; // 1
	MOVLW      159
	MOVWF      PORTB+0
;Uygulama22.c,11 :: 		Delay_ms(1000);
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
;Uygulama22.c,13 :: 		PORTB = 0B00100101; // 2
	MOVLW      37
	MOVWF      PORTB+0
;Uygulama22.c,14 :: 		Delay_ms(1000);
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
;Uygulama22.c,16 :: 		PORTB = 0B00001101; // 3
	MOVLW      13
	MOVWF      PORTB+0
;Uygulama22.c,17 :: 		Delay_ms(1000);
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
;Uygulama22.c,19 :: 		PORTB = 0B10011001; // 4
	MOVLW      153
	MOVWF      PORTB+0
;Uygulama22.c,20 :: 		Delay_ms(1000);
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
;Uygulama22.c,22 :: 		PORTB = 0B01001001; // 5
	MOVLW      73
	MOVWF      PORTB+0
;Uygulama22.c,23 :: 		Delay_ms(1000);
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
;Uygulama22.c,25 :: 		PORTB = 0B01000001; // 6
	MOVLW      65
	MOVWF      PORTB+0
;Uygulama22.c,26 :: 		Delay_ms(1000);
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
;Uygulama22.c,28 :: 		PORTB = 0B00011111; // 7
	MOVLW      31
	MOVWF      PORTB+0
;Uygulama22.c,29 :: 		Delay_ms(1000);
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
;Uygulama22.c,31 :: 		PORTB = 0B00000001; // 8
	MOVLW      1
	MOVWF      PORTB+0
;Uygulama22.c,32 :: 		Delay_ms(1000);
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
;Uygulama22.c,34 :: 		PORTB = 0B00001001; // 9
	MOVLW      9
	MOVWF      PORTB+0
;Uygulama22.c,35 :: 		Delay_ms(1000);
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
;Uygulama22.c,36 :: 		}
	GOTO       L_main0
;Uygulama22.c,37 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
