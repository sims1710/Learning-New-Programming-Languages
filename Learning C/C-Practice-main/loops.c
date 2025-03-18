int whileLoop() {

  int i = 9;
  int square = 0;

  // Write a while loop here:
  while (i >= 0){
    square = i * i;
    printf("%d\t%d\n", i, square);
    i --;
  }

}

int doWhileLoop() {

  int i = 11;

  do{
    printf("%d\n", i);
    i++;
  } while (i < 10);

}

int forLoop() {
  // Write your loop here
  for (int i = 99; i >=0; i--) {
     printf("%d bottles of pop on the wall.", i);
    printf("Take one down and pass it around.");
    printf("%d bottles of pop on the wall.", i - 1);
  }
}
