int pointers() {
  double dblVar;
  double* dblPtr = &dblVar;
  printf("%p", dblPtr);
}

int referenceOperator() {
  
  double g = 9.81;
  double pi = 3.14;

  double* dblPtr = &g;

  printf("%p", dblPtr);

  dblPtr = &pi;  
}

int deferenceOperator() {
  
  int k = 2000;
  int* ptr = &k;

  printf("%i\n", *ptr);

  *ptr = 961;

  printf("%i\n", k); 
}

int pointerArithmetic() {
  double* ptr1;
  ptr1 += 5; 
  ptr1 -= 4;
}

int pointersAndArrays() {
  int arr[] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
  char s[] = "Farmer Jack realized that big yellow quilts were expensive!!";

  int* ptr = &arr[9];

  for(int i = 10; i > 0; i--){
    printf("%i\n", *ptr); 
    ptr--;
}
  char* ptr2 = &s[0];

  for(int i = 0; i < strlen(s); i++){
    *ptr2 = '#'; 
    ptr2++; 
}
  printf("%s\n", s);  
}
