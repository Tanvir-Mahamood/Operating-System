#include <unistd.h> 
#include <stdio.h> 

/*--------------------
get parent process id
---------------------*/

int main() { 
	pid_t ppid = getppid(); 
	printf("%d\n", ppid); 
	return 0; 
} 