void interrupt(){
PORTB.F0=~PORTB.F0; // B.F0 SÜREKLÝ DEÐÝLLENEREK KARE DALGA ÜRETÝMÝ SAÐLIYOR
TMR0=6;
INTCON.TMR0IF=0; // Tmr0 interrupt bayragi interrupt bitiminde sifirlanmali
}
// INIT ALT PROGRAMI
void init(){
portb=0;
trisb=0;// portb çýkýþ olarak ayarlandý
OPTION_REG=1; // TOCS=0, TOSE=X, PSA=0,PS2:PS0=001,prescaler=4
TMR0=6;  // TIMER0 BAÞLANGIÞ DEÐERÝ ATAMASI
INTCON=0XA0; // TMR0 ÝNTERRUPT AYARLARI
}
// ANA PROGRAM
void main() {
init();
while(1){
portb.f7=1;	// KODUN ÇALIÞTIÐINI GÖRMEK ÝÇÝN B.F7=1 OLDU NORMALDE OLMASINA GEREK YOK
Delay_ms(1000);  // 1 SN LÝK GECÝKME KODUN ÇALIÞTIÐINI GÖRMEK ÝÇÝN
portb.f7=0;	// KODUN ÇALIÞTIÐINI GÖRMEK ÝÇÝN B.F7=0 OLDU NORMALDE OLMASINA GEREK YOK
Delay_ms(1000); // 1 SN LÝK GECÝKME KODUN ÇALIÞTIÐINI GÖRMEK ÝÇÝN(1 sn de bir LeD yakýp söndürür)
}
}
