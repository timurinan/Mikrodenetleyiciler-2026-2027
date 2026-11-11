#line 1 "C:/Users/PC/Desktop/Mikrodenetleyiciler-DersOrnekleri_2026_2027/Uygulama22.c"
void main() {

TRISB=0;

while(1){

PORTB = 0B00000011;
Delay_ms(1000);

PORTB = 0B10011111;
Delay_ms(1000);

PORTB = 0B00100101;
Delay_ms(1000);

PORTB = 0B00001101;
Delay_ms(1000);

PORTB = 0B10011001;
Delay_ms(1000);

PORTB = 0B01001001;
Delay_ms(1000);

PORTB = 0B01000001;
Delay_ms(1000);

PORTB = 0B00011111;
Delay_ms(1000);

PORTB = 0B00000001;
Delay_ms(1000);

PORTB = 0B00001001;
Delay_ms(1000);
}
}
