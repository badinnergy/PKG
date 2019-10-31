#include <stdio.h>

int main () {
	
}

void quicksort (char a[], int lo, int hi)
{
	int i;
	if (hi <= lo) return;
	i = partition(a, lo, hi);
	quicksort(a, lo, i-1);
	quicksort(a, i+1, hi);
}

int partition ()
{
	char v = a[lo];
	int i = lo+1, j = hi;
	for 
}