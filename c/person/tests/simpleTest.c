#include <stdio.h>

#include "person.h"

int main () {
	struct person ex;
	ex.age = 22;
	ex.height = 1.7;
	ex.name = "Irfan";
	
	printf("My name is %s, I'm %.2f m tall and I'm %d years old.\n", ex.name, ex.height, ex.age);
	
	return 0;
}