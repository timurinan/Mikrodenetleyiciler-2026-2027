#line 1 "C:/Users/PC/Desktop/Mikrodenetleyiciler-DersOrnekleri_202_2027/Uygulama11.c"


void main() {
TRISB=0B00000000;
TRISD=0B00000001;

while(1){

if(PORTD.F0==1){
 PORTB.F3=1;
}else{
 PORTB.F3=0;
}
 }
}
