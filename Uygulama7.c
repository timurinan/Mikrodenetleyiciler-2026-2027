char sayi1=128;
char sayi2=1;

int i;
void main() {
TRISB=0;
PORTB=0;
while(1){
for(i=0;i<=7;i++){
 PORTB=sayi1^sayi2;
 Delay_ms(1000);
 sayi1=sayi1>>1;
 sayi2=sayi2<<1;
}
sayi1=128;
sayi2=1;
}
}