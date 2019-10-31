#include <stdio.h>
#include <assert.h>
#include <stdlib.h>

#include "person.h"

person_tp newPerson (int age, double height, char *name) {
	person_tp new = malloc(sizeof(person_t));
	assert(new != NULL); // checking the success of malloc
	
	new->age = age;
	new->height = height;
	new->name = name;
	
	return new;
}