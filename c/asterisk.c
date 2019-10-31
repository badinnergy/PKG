#include <stdio.h>

int main () {
	int myNum = 42;
	int *myNum_p = &myNum;
	
	printf("%d\n", myNum);
	printf("%p\n", &myNum);
	printf("%p\n", myNum_p);
	
	int anotherNum = *myNum_p;
	
	printf("%d\n", anotherNum);
	
	return 0;
}