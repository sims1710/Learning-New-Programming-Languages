###FUNCTION RETURN VALUES###
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Modify the code below
int getRandom1000() {
  int random1000 = rand() % 1000 + 1;
  return random1000;
  
}

int main(void) {
  srand(time(NULL));
  // Modify the code below
  int randomNumber = getRandom1000();
  printf("My random number is: %d", randomNumber);
}

###FUNCTION PARAMETERS###
#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Modify the code below
int getRandomNumber(int maxNumber) {
  int randomNumber = rand() % maxNumber + 1;
  return randomNumber;
}

int main(void) {
  srand(time(NULL));
  // Modify the code below
  int randomNumber = getRandomNumber(100);
  printf("My random number is: %d", randomNumber);
}

###FUNCTION WITH POINTERS###
#include <stdio.h>

// Write your code below
void incrementAge(int* agePointer){
  *agePointer = *agePointer + 1;
}

int main(void) {
  int age = 21;
  incrementAge(&age);
  printf("%d\n", age);
}

###FUNCTION PROTOTYPES###
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
void repeatDigit(int);
int getRandomNumber(int);

// Define prototypes above
// the function definitions
void repeatDigit(int repetitions) {
  int digit = getRandomNumber(9);
  for(int i = 0; i < repetitions; i++) {
    printf("%d ", digit);
  }
  printf("\n");
}

int getRandomNumber(int maxNumber) {
  int randomNumber = rand() % maxNumber + 1;
  return randomNumber;
}

int main(void) {
  srand(time(NULL));
  int repetitions = getRandomNumber(10);
  repeatDigit(repetitions);
}
