#include<stdio.h>

int initialisingAndCreatingStrings() {
  char comp[] = {'C', 'o', 'm', 'p', 'u', 't', 'e', 'r', '\0'};
  char compCode[] = {"Computer Code"};  
  printf("%s\n%s", comp, compCode);
}

int characterAccessAndModification() {
  char p[] = "procezzor";
  // Checkpoint 1 code goes here
  printf("%c\n", p[2]);
  // Checkpoint 2 code goes here
  p[5] = 's';
  p[6] = 's';
  printf("%s", p);
}

#include<string.h>

int loopingThroughString() {
  char s[] = "When the zombies arrive, quickly fax Judge Pat Alphabet";
  char p[] = "poolloop";  
  // Checkpoint 1 code goes here
  for(int i = 0; i < strlen(s); i++) {
    s[i] = '*';
  }
  printf("%s\n", s);
  // Checkpoint 2 code goes here
  for(int i = 0; i < strlen(p)/2; i++) {
    p[i] = '#';
  }
  printf("%s", p);
}

int stringConcatenation() {
    
  char s1[] = "London";
  char s2[] = " Bridge";

  char n[] = "New";
  char y[] = " York";
  char c[] = " City";

  strcat(s1, s2);
  printf("%s\n", s1); 

  strcat(n, y);
  strcat(n, c);
  printf("%s", n); 
}

#include<string.h>

int copyingStrings() {
  
  char src[] = "banana";
  char dst[7];
  
  char pan[] = "How vexingly quick daft zebras jump!";
  int len = strlen(pan) + 1; 
  char dst2[len];
 
  strcpy(dst, src);
  printf("%s\n", dst);  

  strcpy(dst2, pan);
  printf("%s", dst2);

}
