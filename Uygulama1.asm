
_main:

;Uygulama1.c,3 :: 		void main() {
;Uygulama1.c,5 :: 		sayi=10;
	MOVLW      10
	MOVWF      _sayi+0
	MOVLW      0
	MOVWF      _sayi+1
;Uygulama1.c,6 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
