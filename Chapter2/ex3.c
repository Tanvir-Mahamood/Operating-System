#include <xinu.h>
void sndch(char);

/*-----------------------------------------------------------------
main => example of 2 processes executing the same code concurrently
------------------------------------------------------------------*/

shellcmd xsh_exam(int nargs, char *args[]) {
	resume(create(sndch, 1024, 20, "send A", 1, 'A'));
	resume(create(sndch, 1024, 20, "send B", 1, 'B'));
	return 0;
}

/*------------------------------------
sndch => output a character on a serial device indefinitely
-------------------------------------*/
void sndch(char ch) {
	int32 i;
	for(i=0; i<=20000; i++) putc(CONSOLE, ch);
}

