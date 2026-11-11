unsigned int sayac;
void main() {

TRISB=0;
TRISD=1;
sayac=0;

while(1){

 if(PORTD.F0==1){
 sayac=sayac+1;
 if(sayac==10){
  sayac=0;
 }
  PORTB=sayac;
  Delay_ms(1000);
 }
}
}