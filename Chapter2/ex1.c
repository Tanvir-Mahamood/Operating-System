#include <xinu.h>
/*------------------------
write "hi" on the console
-------------------------*/
shellcmd xsh_exam(int nargs, char *args[]) {
	putc(CONSOLE, 'h');
	putc(CONSOLE, 'i');
	putc(CONSOLE, '\n');

	return 0;
}