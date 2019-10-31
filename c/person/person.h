

typedef struct person {
	int age;
	double height;
	char *name;
} person_t;

typedef struct person *person_tp;

person_tp newPerson (int age, double height, char *name);