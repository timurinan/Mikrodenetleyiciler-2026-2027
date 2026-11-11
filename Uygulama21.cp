#line 1 "C:/Users/PC/Desktop/Mikrodenetleyiciler-DersOrnekleri_2026_2027/Uygulama21.c"
void main() {

TRISB=0;

while(1){
 PORTB=0B11111100;
 Delay_ms(1000);

 PORTB=0B01100000;
 Delay_ms(1000);

 PORTB=0B11011010;
 Delay_ms(1000);
 PORTB=0B11110010;
 Delay_ms(1000);

 PORTB=0B01100110;
 Delay_ms(1000);
 PORTB = 0B10110110;
Delay_ms(1000);

PORTB = 0B10111110;
Delay_ms(1000);

PORTB = 0B11100000;
Delay_ms(1000);

PORTB = 0B11111110;
Delay_ms(1000);

PORTB = 0B11110110;
Delay_ms(1000);


}
}
