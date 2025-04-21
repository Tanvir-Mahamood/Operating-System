#include <stdio.h> 
#include <unistd.h> 
#include <sys/types.h> 

/*--------------------------------------------------------------------------------------
Write a C Program where the parent creates a child using fork() then continues printing 
odd numbers and the child prints even numbers. The numbers are in range 1-10. 
--------------------------------------------------------------------------------------*/ 

int main() { 
    pid_t pid = fork(); 
 
    if (pid < 0) { // Error handling 
        perror("fork failed"); 
        return 1; 
    } 
    else if (pid == 0) { // Child process 
        for (int i = 1; i <= 10; i++) { 
            if (i % 2 == 0) { 
                printf("Child: %d\n", i); 
                usleep(100000); // Sleep 100ms 
            } 
        } 
    } 
    else { // Parent process 
        for (int i = 1; i <= 10; i++) { 
            if (i % 2 != 0) { 
                printf("Parent: %d\n", i); 
                usleep(100000); // Sleep 100ms 
            } 
        } 
    } 

    return 0; 
}