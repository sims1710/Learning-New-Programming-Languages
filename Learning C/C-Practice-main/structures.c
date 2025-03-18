// DEFINE A STRUCTURE
#include <stdio.h>
int main(void) {
  struct Person{
    char firstName[25];
    int age;
  };
}

// INTIALISING STRUCTURES
#include <stdio.h>
int main(void) {
  struct Person {
    char firstName[25];
    char lastName[40];
    int age;
  };
  struct Person person1 = {"Ada", "Lovelace", 28};
  struct Person person2 = {"Marie", "Curie", 44};
}

// STRUCTURE DOT NOTATION
#include <stdio.h>
struct Person {
  char name[40];
  int age;
};

int main(void) {
  struct Person person1 = {"Martin"};
  struct Person person2 = {"Michelle"};
  // Write your code below
  person1.age = 57;
  person2.age = 27;

  printf("Hello my name is %s and I am %d years old.\n", person1.name, person1.age);
  printf("Hello my name is %s and I am %d years old.\n", person2.name, person2.age);
}

// STRUCTURE POINTERS
#include <stdio.h>
struct Person {
  char name[40];
  int age;
};

int main(void) {
  struct Person person1 = {"Martin", 57};
  struct Person person2 = {"Michelle", 27};
  // Write your code below
  struct Person* person1Pointer = &person1;
  struct Person* person2Pointer = &person2;

  (*person1Pointer).age += 1; // dereferencing and dot notation
  person2Pointer->age += 10; // arrow notation

  printf("Hello my name is %s and I am %d years old.\n", person1.name, person1.age);
  printf("Hello my name is %s and I am %d years old.\n", person2.name, person2.age);
}

// STRUCTURES IN FUNCTIONS
#include <stdio.h>
struct Person {
  char name[40];
  int age;
};

struct Person ageOne(struct Person friend1, struct Person* friend2Pointer){
  friend1.age += 1;
  friend2Pointer->age += 1;
  return friend1;
}

int main(void) {
  struct Person myFriend = {"Martin", 57};
  struct Person myOtherFriend = {"Michelle", 27};
  
  myFriend = ageOne(myFriend, &myOtherFriend);

  printf("Hello my name is %s and I am %d years old.\n", myFriend.name, myFriend.age);
  printf("Hello my name is %s and I am %d years old.\n", myOtherFriend.name, myOtherFriend.age);
}
