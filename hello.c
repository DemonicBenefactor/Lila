#include <stdio.h>


void main (void)
{
    int myFirstNumber;
    int mySecondNumber;
    int myTotal;


    myFirstNumber = 9;
    mySecondNumber = 9;

    printf ("Avril is %d years old.\n", myFirstNumber);
    printf ("Link is %d years old.\n", mySecondNumber);
    
    printf("The ages added together are: %d.\n", myFirstNumber + mySecondNumber);
    printf("The ages subtracted together are: %d.\n", myFirstNumber - mySecondNumber);
    printf("The ages multiplied together are: %d.\n", myFirstNumber * mySecondNumber);

    if ( myFirstNumber == mySecondNumber)
    {
        printf ("The numbers are the same.\n");
    }
    else
    {
        printf ("The numbers are vewy diffuwent.\n");
    }

}
