void main() {

TRISB=0;

while(1){

PORTB = 0B00000011; // 0
Delay_ms(1000);

PORTB = 0B10011111; // 1
Delay_ms(1000);

PORTB = 0B00100101; // 2
Delay_ms(1000);

PORTB = 0B00001101; // 3
Delay_ms(1000);

PORTB = 0B10011001; // 4
Delay_ms(1000);

PORTB = 0B01001001; // 5
Delay_ms(1000);

PORTB = 0B01000001; // 6
Delay_ms(1000);

PORTB = 0B00011111; // 7
Delay_ms(1000);

PORTB = 0B00000001; // 8
Delay_ms(1000);

PORTB = 0B00001001; // 9
Delay_ms(1000);
}
}

