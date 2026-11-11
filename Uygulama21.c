void main() {

TRISB=0;

while(1){
 PORTB=0B11111100;//0
 Delay_ms(1000);

 PORTB=0B01100000; //1
 Delay_ms(1000);

 PORTB=0B11011010; //2
 Delay_ms(1000);
   PORTB=0B11110010; //3
 Delay_ms(1000);

 PORTB=0B01100110;//4
 Delay_ms(1000);
 PORTB = 0B10110110; // 5
Delay_ms(1000);

PORTB = 0B10111110; // 6
Delay_ms(1000);

PORTB = 0B11100000; // 7
Delay_ms(1000);

PORTB = 0B11111110; // 8
Delay_ms(1000);

PORTB = 0B11110110; // 9
Delay_ms(1000);


}
}


