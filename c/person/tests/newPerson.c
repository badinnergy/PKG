#include <stdio.h>

#include "../person.h"

int main () {
	int age = 0;
	double height = 0.0;
	char name[100];
	
	printf("Enter your name: ");
	scanf("%s", (char*)name);
	printf("How old are you (y/o): ");
	scanf("%d", &age);
	printf("How tall are you (meters): ");
	scanf("%lf", &height);
	
	person_tp new = newPerson(age, height, name);
	
	puts("\nOutput:");
	
	printf("Your name is %s, you're %.2f m tall and you're %d years old.\n", new->name, new->height, new->age);
	
	return 0;
}