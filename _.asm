
_yaksondur_tek:

;_.c,1 :: 		void yaksondur_tek()  {
;_.c,2 :: 		PORTB=0b10101010;
	MOVLW      170
	MOVWF      PORTB+0
;_.c,3 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_yaksondur_tek0:
	DECFSZ     R13+0, 1
	GOTO       L_yaksondur_tek0
	DECFSZ     R12+0, 1
	GOTO       L_yaksondur_tek0
	DECFSZ     R11+0, 1
	GOTO       L_yaksondur_tek0
	NOP
	NOP
;_.c,4 :: 		PORTB=0;
	CLRF       PORTB+0
;_.c,5 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_yaksondur_tek1:
	DECFSZ     R13+0, 1
	GOTO       L_yaksondur_tek1
	DECFSZ     R12+0, 1
	GOTO       L_yaksondur_tek1
	DECFSZ     R11+0, 1
	GOTO       L_yaksondur_tek1
	NOP
	NOP
;_.c,7 :: 		}
L_end_yaksondur_tek:
	RETURN
; end of _yaksondur_tek

_yaksondur_cift:

;_.c,8 :: 		void yaksondur_cift()  {
;_.c,9 :: 		PORTB=0b01010101;
	MOVLW      85
	MOVWF      PORTB+0
;_.c,10 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_yaksondur_cift2:
	DECFSZ     R13+0, 1
	GOTO       L_yaksondur_cift2
	DECFSZ     R12+0, 1
	GOTO       L_yaksondur_cift2
	DECFSZ     R11+0, 1
	GOTO       L_yaksondur_cift2
	NOP
	NOP
;_.c,11 :: 		PORTB=0;
	CLRF       PORTB+0
;_.c,12 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_yaksondur_cift3:
	DECFSZ     R13+0, 1
	GOTO       L_yaksondur_cift3
	DECFSZ     R12+0, 1
	GOTO       L_yaksondur_cift3
	DECFSZ     R11+0, 1
	GOTO       L_yaksondur_cift3
	NOP
	NOP
;_.c,14 :: 		}
L_end_yaksondur_cift:
	RETURN
; end of _yaksondur_cift

_main:

;_.c,16 :: 		void main() {
;_.c,17 :: 		TRISB=0B00000000;
	CLRF       TRISB+0
;_.c,18 :: 		TRISD=0B00000001;
	MOVLW      1
	MOVWF      TRISD+0
;_.c,20 :: 		while(1){
L_main4:
;_.c,22 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main6
;_.c,23 :: 		yaksondur_tek();
	CALL       _yaksondur_tek+0
;_.c,24 :: 		}else{
	GOTO       L_main7
L_main6:
;_.c,25 :: 		yaksondur_cift();
	CALL       _yaksondur_cift+0
;_.c,26 :: 		}
L_main7:
;_.c,27 :: 		}
	GOTO       L_main4
;_.c,28 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
