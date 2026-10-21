
void main() {
TRISB=0B00000000;
TRISD=0B00000001;

while(1){

if(PORTD.F0==1){
 PORTB=255;
}else{
 PORTB=0;
}
    }
}