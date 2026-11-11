
_main:

;Uygulama3.c,4 :: 		void main() {
;Uygulama3.c,6 :: 		x=-4.75;
	MOVLW      0
	MOVWF      _x+0
	MOVLW      0
	MOVWF      _x+1
	MOVLW      152
	MOVWF      _x+2
	MOVLW      129
	MOVWF      _x+3
;Uygulama3.c,7 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
