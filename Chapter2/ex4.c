#include <xinu.h>

void produce(void), consume(void);
int32 n = 0;

/*-----------------------------------------------------------------
main => example of 2 unsynchronous priducer and consumer processes
------------------------------------------------------------------*/

shellcmd xsh_exam(int nargs, char *args[]){
	resume(create(consume, 1024, 20, "cons", 0));
	resume(create(produce, 1024, 20, "prod", 0));
	return 0;
}

/*-----------------------------------------
produce => increment n 2000 times and exit
-------------------------------------------*/

void produce(void){
	int32 i;
	for(i=1; i<=2000; i++) n++;
}

/*--------------------------------------
consume => print n 2000 times and exit
---------------------------------------*/

void consume(void){
	int32 i;
	for(i=1; i<=2000; i++)
		printf("The value of n = %d \n", n);
}