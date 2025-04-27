#include <xinu.h> 
 
int prod2(int32 ptid); 
int cons2(int32 ptid); 

/*----------------------------------------------------------
Producer sends words (e.g., "cat") through the port. 
Consumer receives abd prints them in reverse (e.g., "tac")
-----------------------------------------------------------*/
 
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
    char *word = "CAT"; // Word to send
    char *ptr = word;
    
    while (*ptr != '\0') {
        if (ptsend(ptid, *ptr) == SYSERR) {
            kprintf("Failed to send character\n");
            return SYSERR;
        }
        ptr++;
    }
    
    ptsend(ptid, '\0');
    
    return 0;
} 
 
int cons2(int32 ptid) { 
    char word[10]; 
    int index = 0;
    char ch;
    
    while (1) {
        ch = ptrecv(ptid);
        
        if (ch == '\0') break;
        
        if (index < sizeof(word) - 1) { // Store character if there's space
            word[index++] = ch;
        }
    }

    for (int i = index - 1; i >= 0; i--) {
        kprintf("%c", word[i]);
    }
    kprintf("\n");
    
    return 0;
} 