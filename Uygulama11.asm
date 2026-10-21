
_main:

;Uygulama11.c,3 :: 		void main() {
;Uygulama11.c,4 :: 		TRISB=0B00000000;
	CLRF       TRISB+0
;Uygulama11.c,5 :: 		TRISD=0B00000001;
	MOVLW      1
	MOVWF      TRISD+0
;Uygulama11.c,7 :: 		while(1){
L_main0:
;Uygulama11.c,9 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Uygulama11.c,10 :: 		PORTB.F3=1;
	BSF        PORTB+0, 3
;Uygulama11.c,11 :: 		}else{
	GOTO       L_main3
L_main2:
;Uygulama11.c,12 :: 		PORTB.F3=0;
	BCF        PORTB+0, 3
;Uygulama11.c,13 :: 		}
L_main3:
;Uygulama11.c,14 :: 		}
	GOTO       L_main0
;Uygulama11.c,15 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
