#line 1 "C:/Users/PC/Desktop/Mikrodenetleyiciler-DersOrnekleri_2026_2027/Uygulama16.c"
void interrupt(){
PORTB.F0=~PORTB.F0;
TMR0=131;
INTCON.TMR0IF=0;
}

void init(){
portb=0;
trisb=0;
OPTION_REG=2;
TMR0=6;
INTCON=0XA0;
}

void main() {
init();
while(1){

}
}
