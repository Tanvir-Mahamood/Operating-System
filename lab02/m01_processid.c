#include <unistd.h> 
#include <stdio.h> 

/*----------------------
get current process id
------------------------*/

int main() { 
	pid_t pid = getpid(); 
	printf("%d\n", pid); 
	return 0; 
}