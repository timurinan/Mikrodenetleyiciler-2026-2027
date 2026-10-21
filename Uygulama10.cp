#line 1 "C:/Users/PC/Desktop/Mikrodenetleyiciler-DersOrnekleri_202_2027/Uygulama10.c"

bit yon;

void main() {
yon=0;
 TRISB=0;
 PORTB=1;
 Delay_ms(1000);
 while(1){
 if(yon==0){
 PORTB=PORTB<<1;
 }else{
 PORTB=PORTB>>1;
 }
 Delay_ms(1000);
 if(PORTB==128){
 yon=1;
 }
 if(PORTB==1){
 yon=0;
 }
 }
}
