#include <xinu.h>

void produce(sid32, sid32), consume(sid32, sid32);
int32 n = 0;

/*-----------------------------------------------------------------
main => example of 2 synchronous producer and consumer processes
------------------------------------------------------------------*/

shellcmd xsh_exam(int nargs, char *args[]) {
    sid32 produced, consumed;
    produced = semcreate(1);   // initially produced = 1 => producer can produce
    consumed = semcreate(0);   // initially consumed = 0 => consumer must wait

    resume(create(consume, 1024, 20, "consumer", 2, consumed, produced));
    resume(create(produce, 1024, 20, "producer", 2, consumed, produced));

    return 0;
}

/*-----------------------------------------
produce => increment n 2000 times and exit
-------------------------------------------*/

void produce(sid32 consumed, sid32 produced) {
    int32 i;
    for (i = 1; i <= 2000; i++) {
        wait(consumed);  // wait for previous value to be consumed
        n++;             // produce next value
        signal(produced); // signal that new value is produced
    }
}

/*--------------------------------------
consume => print n 2000 times and exit
---------------------------------------*/

void consume(sid32 consumed, sid32 produced) {
    int32 i;
    for (i = 1; i <= 2000; i++) {
        wait(produced);              // wait for new value to be produced
        printf("The value of n = %d \n", n); // consume
        signal(consumed);            // signal that value has been consumed
    }   
}
