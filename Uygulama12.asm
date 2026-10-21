
_main:

;Uygulama12.c,2 :: 		void main() {
;Uygulama12.c,3 :: 		TRISB=0B00000000;
	CLRF       TRISB+0
;Uygulama12.c,4 :: 		TRISD=0B00000001;
	MOVLW      1
	MOVWF      TRISD+0
;Uygulama12.c,6 :: 		while(1){
L_main0:
;Uygulama12.c,8 :: 		if(PORTD.F0==1){
	BTFSS      PORTD+0, 0
	GOTO       L_main2
;Uygulama12.c,9 :: 		PORTB=255;
	MOVLW      255
	MOVWF      PORTB+0
;Uygulama12.c,10 :: 		}else{
	GOTO       L_main3
L_main2:
;Uygulama12.c,11 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama12.c,12 :: 		}
L_main3:
;Uygulama12.c,13 :: 		}
	GOTO       L_main0
;Uygulama12.c,14 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
