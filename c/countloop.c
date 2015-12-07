/* loop example : print 1-100 */

#include <stdio.h>

int main()
{
	int i = 0;
	for (i = 0; i < 50; i++)
	{
		printf("%i", i);
		printf(" \n");
	}
	printf("Finish loop!\n");
	return 0;
}

int checkprime(int n)
{
	int i=2;
	for (i=2;i<n;i++)
	{
		if(n%i == 0)
		{
			return 1;
		}
		return 0;
	}
}