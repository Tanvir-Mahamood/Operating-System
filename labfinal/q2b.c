#include <xinu.h> 
 
int prod2(int32 ptid); 
int cons2(int32 ptid); 
 

/*------------------------------------------------------------------
Producer sends 5 numbers (1,2,3,4,5) and consumer will receive them. 
After receiving receiving all the numbers, print sum.
-------------------------------------------------------------------*/

shellcmd xsh_exam(int nargs, char *args[]) { 
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
    for(i=1; i<6; i++) { 
        int32 msg = ptsend(ptid, i); 
    } 
    return 0; 
} 
 
int cons2(int32 ptid) { 
    int i, sum = 0; 
    int arr[5];
    for(i=1; i<6; i++) { 
        int32 msg = ptrecv(ptid); 
        resched_cntl(DEFER_START); 
        arr[i-1] = msg;
        resched_cntl(DEFER_STOP); 
    } 
    for(i=0; i<5; i++) {
        sum = sum + arr[i];
    }
    kprintf("Batch Total = %d\n", sum);
    return 0; 
} 