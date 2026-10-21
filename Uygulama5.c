
int i;

void main() {

 TRISB=0X00;
 PORTB=0;
 while(1){
 
 for(i=0;i<=7;i++){
  PORTB=PORTB*2+1;
  Delay_ms(2000);
 }
 PORTB=0;
 }
}