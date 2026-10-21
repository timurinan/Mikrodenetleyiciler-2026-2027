#line 1 "C:/Users/PC/Desktop/Mikrodenetleyiciler-DersOrnekleri_202_2027/Uygulama6.c"

int i;

void main() {
TRISB=0;
PORTB=1;

while(1){

 for(i=0;i<7;i++){
 Delay_ms(500);
 PORTB=PORTB<<1;
 }
 Delay_ms(500);
 PORTB=1;
}
}
