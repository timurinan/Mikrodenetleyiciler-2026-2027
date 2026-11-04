
_interrupt:
	MOVWF      R15+0
	SWAPF      STATUS+0, 0
	CLRF       STATUS+0
	MOVWF      ___saveSTATUS+0
	MOVF       PCLATH+0, 0
	MOVWF      ___savePCLATH+0
	CLRF       PCLATH+0

;Uygulama19.c,3 :: 		interrupt(){
;Uygulama19.c,4 :: 		adc_degeri=ADRESH;
	MOVF       ADRESH+0, 0
	MOVWF      _adc_degeri+0
	CLRF       _adc_degeri+1
;Uygulama19.c,5 :: 		PIR1.ADIF=0;
	BCF        PIR1+0, 6
;Uygulama19.c,6 :: 		ADCON0.GO=1;
	BSF        ADCON0+0, 2
;Uygulama19.c,7 :: 		}
L_end_interrupt:
L__interrupt3:
	MOVF       ___savePCLATH+0, 0
	MOVWF      PCLATH+0
	SWAPF      ___saveSTATUS+0, 0
	MOVWF      STATUS+0
	SWAPF      R15+0, 1
	SWAPF      R15+0, 0
	RETFIE
; end of _interrupt

_init:

;Uygulama19.c,9 :: 		init(){
;Uygulama19.c,10 :: 		ADCON1=0X4E;// ADFM=0(LEFT JUSTIFIED),ADCS2=1,
	MOVLW      78
	MOVWF      ADCON1+0
;Uygulama19.c,12 :: 		ADCON0=0X45;//ADCS1=0,ADCS1=1,16 tOSC SEÇÝLDÝ.,CHS2:CHS0=0 KANAL aN0 SEÇÝLDÝ
	MOVLW      69
	MOVWF      ADCON0+0
;Uygulama19.c,14 :: 		PIR1.ADIF=0; //A/D KESME BAYRAÐI SIFIRLNADI
	BCF        PIR1+0, 6
;Uygulama19.c,15 :: 		PIE1.ADIE=1;// A/D KESMESÝ AKTÝF YAPILDI
	BSF        PIE1+0, 6
;Uygulama19.c,16 :: 		INTCON.PEIE=1;// PEIE(ÇEVRESEL ARABÝRÝM KESMESÝ) AKTÝF OLDU
	BSF        INTCON+0, 6
;Uygulama19.c,17 :: 		INTCON.GIE=1;// GLOBAL KESME AKTÝF OLDU
	BSF        INTCON+0, 7
;Uygulama19.c,18 :: 		TRISA=1;
	MOVLW      1
	MOVWF      TRISA+0
;Uygulama19.c,19 :: 		TRISB=0; //A/D SONUCU B PORTUNA GÖNDERÝLECEK
	CLRF       TRISB+0
;Uygulama19.c,20 :: 		PORTB=0;
	CLRF       PORTB+0
;Uygulama19.c,21 :: 		TRISD=0;
	CLRF       TRISD+0
;Uygulama19.c,22 :: 		PORTD=0;
	CLRF       PORTD+0
;Uygulama19.c,23 :: 		}
L_end_init:
	RETURN
; end of _init

_main:

;Uygulama19.c,24 :: 		void main() {
;Uygulama19.c,25 :: 		init();
	CALL       _init+0
;Uygulama19.c,26 :: 		while(1){
L_main0:
;Uygulama19.c,27 :: 		PORTB=adc_degeri;
	MOVF       _adc_degeri+0, 0
	MOVWF      PORTB+0
;Uygulama19.c,28 :: 		PORTD.F7=~PORTD.F7;
	MOVLW      128
	XORWF      PORTD+0, 1
;Uygulama19.c,29 :: 		}
	GOTO       L_main0
;Uygulama19.c,30 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
