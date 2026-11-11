
_main:

;Uygulama24.c,2 :: 		void main() {
;Uygulama24.c,4 :: 		TRISB=0;
	CLRF       TRISB+0
;Uygulama24.c,5 :: 		TRISD=1;
	MOVLW      1
	MOVWF      TRISD+0
;Uygulama24.c,6 :: 		sayac=0;
	CLRF       _sayac+0
	CLRF       _sayac+1
;Uygulama24.c,8 :: 		while(1){
L_main0:
;Uygulama24.c,10 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Uygulama24.c,11 :: 		sayac=sayac+1;
	INCF       _sayac+0, 1
	BTFSC      STATUS+0, 2
	INCF       _sayac+1, 1
;Uygulama24.c,12 :: 		if(sayac==10){
	MOVLW      0
	XORWF      _sayac+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main6
	MOVLW      10
	XORWF      _sayac+0, 0
L__main6:
	BTFSS      STATUS+0, 2
	GOTO       L_main3
;Uygulama24.c,13 :: 		sayac=0;
	CLRF       _sayac+0
	CLRF       _sayac+1
;Uygulama24.c,14 :: 		}
L_main3:
;Uygulama24.c,15 :: 		PORTB=sayac;
	MOVF       _sayac+0, 0
	MOVWF      PORTB+0
;Uygulama24.c,16 :: 		Delay_ms(1000);
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
;Uygulama24.c,17 :: 		}
L_main2:
;Uygulama24.c,18 :: 		}
	GOTO       L_main0
;Uygulama24.c,19 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
