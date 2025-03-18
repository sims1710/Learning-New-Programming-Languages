#include <stdio.h>
#include <string.h>

int main() {

  int counter1[] = {0, 0, 0, 0};
  int counter2[] = {0, 0, 0, 0};

  char string1[] = "dbb cccccaacb cdbababdcdcdab dcdad";
  char string2[] = "bbbcc bdddccccad cdbbaaacaccdabdd";

  int flag = 0;

  for (int i = 0; i < strlen(string1); i++) {
    if (string1[i] == 'a') {
      counter1[0] += 1;
    }
    if (string1[i] == 'b') {
      counter1[1] += 1;
    }
    if (string1[i] == 'c') {
      counter1[2] += 1;
    }
    if (string1[i] == 'd') {
      counter1[3] += 1;
    }
  }

  for (int i = 0; i < strlen(string2); i++) {
    if (string2[i] == 'a') {
      counter2[0] += 1;
    }
    if (string2[i] == 'b') {
      counter2[1] += 1;
    }
    if (string2[i] == 'c') {
      counter2[2] += 1;
    }
    if (string2[i] == 'd') {
      counter2[3] += 1;
    }
  }

  for (int i = 0; i < 4; i++) {
    if (counter1[0] != counter2[0]) {
      flag = 1;
      break;
    }
    if (counter1[1] != counter2[1]) {
      flag = 1;
      break;
    }
    if (counter1[2] != counter2[2]) {
      flag = 1;
      break;
    }
    if (counter1[3] != counter2[3]) {
      flag = 1;
      break;
    }
  }

  if (flag == 0) {
    printf("Anagram!");
  } else {
    printf("Not Anagram!");
  }
}
