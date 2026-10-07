
_main:

;Uygulama2.c,6 :: 		void main() {
;Uygulama2.c,8 :: 		x=20; //0x14, 0b00010100
	MOVLW      20
	MOVWF      32
;Uygulama2.c,9 :: 		y=783238988;
	MOVLW      76
	MOVWF      37
	MOVLW      71
	MOVWF      38
;Uygulama2.c,10 :: 		t=1;
	MOVLW      1
	MOVWF      38
;Uygulama2.c,11 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
