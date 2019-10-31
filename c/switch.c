#include <stdio.h>

int main () {
	int num = 0;
	
	printf("Enter a number: ");
	scanf("%d", &num);
	
	switch(num) { // can only evaluate int or enum
		case 1:
			puts("Kalimah syahadah");
			break;
			
		case 2:
			puts("Solat 5 waktu sehari");
			break;
			
		case 3:
			puts("Puasa pada bulan Ramadhan");
			break;
			
		case 4:
			puts("Mengeluarkan zakat");
			break;
			
		case 5:
			puts("Menunaikan haji");
			break;
		
		default:
			printf("%d\n", num);
	}
	
	return 0;
}