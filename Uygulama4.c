
void main() {

TRISB=0X00;  //b portunun tüm pinleri çýkýþ olarak ayarlandý...

while(1){

 PORTB=0X00;
 Delay_ms(1000);
 PORTB=0XFF;
 Delay_ms(1000);
}

}