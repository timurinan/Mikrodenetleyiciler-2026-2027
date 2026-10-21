void yaksondur_tek()  {
PORTB=0b10101010;
 Delay_ms(1000);
 PORTB=0;
 Delay_ms(1000);

}
void yaksondur_cift()  {
PORTB=0b01010101;
 Delay_ms(1000);
 PORTB=0;
 Delay_ms(1000);

}

void main() {
TRISB=0B00000000;
TRISD=0B00000001;

while(1){

if(PORTD.F0==1){
  yaksondur_tek();
}else{
 yaksondur_cift();
}
    }
}