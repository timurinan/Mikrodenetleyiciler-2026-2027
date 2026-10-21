#line 1 "C:/Users/PC/Desktop/Mikrodenetleyiciler-DersOrnekleri_202_2027/Uygulama13.c"

void main() {
TRISB=0B00000000;
TRISD=0B00000001;

while(1){

if(PORTD.F0==1){
 PORTB=255;
 Delay_ms(1000);
 PORTB=0;
 Delay_ms(1000);
}else{
 PORTB=0;
}
 }
}
