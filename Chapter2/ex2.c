#include <xinu.h>
void sndA(void), sndB(void);

/*------------------------------------
Example of creating processes in XINU
-------------------------------------*/

shellcmd xsh_exam(int nargs, char *args[]) {
	resume(create(sndA, 1024, 20, "process 1", 0));
	resume(create(sndB, 1024, 20, "process 2", 0));

	return 0;
}

/*------------------------------------
sndA => repeatedly emit 'A' on the console 
-------------------------------------*/
void sndA(void) {
	int32 i;
	for(i=0; i<=20000; i++) putc(CONSOLE, 'A');
}

/*------------------------------------
sndB => repeatedly emit 'B' on the console 
-------------------------------------*/
void sndB(void) {
	int32 i;
	for(i=0; i<=20000; i++) putc(CONSOLE, 'B');
}
