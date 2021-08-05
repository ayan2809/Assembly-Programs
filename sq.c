  VBMB-2
//                SQUARE.C
			     /*TO GENERATE THE SQUARE WAVE FORM*/
#include <stdio.h>
void main()
{
int i;
char choice;
clrscr();
for(i=1;i<=12;i++)
  printf("\n");
printf("\t\tThis program is to generate SQUARE waveform");
start:outportb(0xD8c0,0x00);
	delay(30);
	outportb(0xd8c0,0xff);
	delay(30);
//if(!kbhit())
   goto start;
getch();
}
