#include <xinu.h> 

/*-----------------------------------------------------------------------------------
Write a program in Xinu, where the main process creates a port and 2 processes- 
producer and consumer. Producer puts a value in range 1-10 one by one in port and 
Consumer reads them one by one and prints them. 
-------------------------------------------------------------------------------------*/
 
int prod2(int32 ptid); 
int cons2(int32 ptid); 
 
shellcmd xsh_hello(int nargs, char *args[]) { 
    ptinit(100); // Important! You need to manually call this here! 
    int32 ptid = ptcreate(10); 
        
    if (ptid == SYSERR) { 
        kprintf("Failed to create port\n"); 
        return 1; 
    } 

    resume(create(cons2, 1024, 20, "consumer", 1, ptid)); 
    resume(create(prod2, 1024, 20, "producer", 1, ptid)); 

    return 0; 
} 
 
int prod2(int32 ptid) { 
    int i; 
    for(i=0; i<10; i++) { 
        int32 msg = ptsend(ptid, i); 
        resched_cntl(DEFER_START); 
        if (msg == SYSERR) { 
            kprintf("Producer: Failed to send message\n"); 
        } else { 
            kprintf("Producer: Sent message %d\n", i); 
        } 
        resched_cntl(DEFER_STOP); 
    } 
    return 0; 
} 

int cons2(int32 ptid) { 
    int i; 
    for(i=0; i<10; i++) { 
        int32 msg = ptrecv(ptid); 
        resched_cntl(DEFER_START); 
        if (msg == SYSERR) { 
            kprintf("Consumer: Failed to receive message\n"); 
        } else { 
            kprintf("Consumer: Received message %d\n", msg); 
        } 
        resched_cntl(DEFER_STOP); 
    } 
    return 0; 
} 