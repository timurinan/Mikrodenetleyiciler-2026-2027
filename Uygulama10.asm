
_main:

;Uygulama10.c,4 :: 		void main() {
;Uygulama10.c,5 :: 		yon=0;
	BCF        _yon+0, BitPos(_yon+0)
;Uygulama10.c,6 :: 		TRISB=0;
	CLRF       TRISB+0
;Uygulama10.c,7 :: 		PORTB=1;
	MOVLW      1
	MOVWF      PORTB+0
;Uygulama10.c,8 :: 		Delay_ms(1000);
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L_main0:
	DECFSZ     R13+0, 1
	GOTO       L_main0
	DECFSZ     R12+0, 1
	GOTO       L_main0
	DECFSZ     R11+0, 1
	GOTO       L_main0
	NOP
	NOP
;Uygulama10.c,9 :: 		while(1){
L_main1:
;Uygulama10.c,10 :: 		if(yon==0){
	BTFSC      _yon+0, BitPos(_yon+0)
	GOTO       L_main3
;Uygulama10.c,11 :: 		PORTB=PORTB<<1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama10.c,12 :: 		}else{
	GOTO       L_main4
L_main3:
;Uygulama10.c,13 :: 		PORTB=PORTB>>1;
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	RRF        R0+0, 1
	BCF        R0+0, 7
	MOVF       R0+0, 0
	MOVWF      PORTB+0
;Uygulama10.c,14 :: 		}
L_main4:
;Uygulama10.c,15 :: 		Delay_ms(1000);
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
;Uygulama10.c,16 :: 		if(PORTB==128){
	MOVF       PORTB+0, 0
	XORLW      128
	BTFSS      STATUS+0, 2
	GOTO       L_main6
;Uygulama10.c,17 :: 		yon=1;
	BSF        _yon+0, BitPos(_yon+0)
;Uygulama10.c,18 :: 		}
L_main6:
;Uygulama10.c,19 :: 		if(PORTB==1){
	MOVF       PORTB+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_main7
;Uygulama10.c,20 :: 		yon=0;
	BCF        _yon+0, BitPos(_yon+0)
;Uygulama10.c,21 :: 		}
L_main7:
;Uygulama10.c,22 :: 		}
	GOTO       L_main1
;Uygulama10.c,23 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
