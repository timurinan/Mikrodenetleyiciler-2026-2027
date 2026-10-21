
_main:

;Uygulama7.c,5 :: 		void main() {
;Uygulama7.c,6 :: 		TRISB=0;
	CLRF       TRISB+0
;Uygulama7.c,7 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama7.c,8 :: 		while(1){
L_main0:
;Uygulama7.c,9 :: 		for(i=0;i<=7;i++){
	CLRF       _i+0
	CLRF       _i+1
L_main2:
	MOVLW      128
	MOVWF      R0+0
	MOVLW      128
	XORWF      _i+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main7
	MOVF       _i+0, 0
	SUBLW      7
L__main7:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;Uygulama7.c,10 :: 		PORTB=sayi1^sayi2;
	MOVF       _sayi2+0, 0
	XORWF      _sayi1+0, 0
	MOVWF      PORTB+0
;Uygulama7.c,11 :: 		Delay_ms(1000);
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
;Uygulama7.c,12 :: 		sayi1=sayi1>>1;
	RRF        _sayi1+0, 1
	BCF        _sayi1+0, 7
;Uygulama7.c,13 :: 		sayi2=sayi2<<1;
	RLF        _sayi2+0, 1
	BCF        _sayi2+0, 0
;Uygulama7.c,9 :: 		for(i=0;i<=7;i++){
	INCF       _i+0, 1
	BTFSC      STATUS+0, 2
	INCF       _i+1, 1
;Uygulama7.c,14 :: 		}
	GOTO       L_main2
L_main3:
;Uygulama7.c,15 :: 		sayi1=128;
	MOVLW      128
	MOVWF      _sayi1+0
;Uygulama7.c,16 :: 		sayi2=1;
	MOVLW      1
	MOVWF      _sayi2+0
;Uygulama7.c,17 :: 		}
	GOTO       L_main0
;Uygulama7.c,18 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
