int coinFlip() {
  // Create a number that’s 0 or 1
  srand (time(NULL));
  int coin = rand() % 2;

  // If number is 0: Heads
  // If it is not 0: Tails
  if (coin == 0) {
    printf("Heads\n");
  } else {
    printf("Tails\n");
  }
}

int ifStatement() {

  int grade1 = 90;
  int grade2 = 59;

  if (grade1 > 60){
    printf("Pass\n");
  }

  if (grade2 < 60){
    printf("Fail\n");
  }

}

int workingWithOperators() {

  int a = 10;
  int b = -5;

  if (a > 0 || b > 0) {
    printf("Positive\n");
  }

  if (a > 0 && !(b > 0)) {
    printf("Positive too");
  }

}

int elseClause() {

  int grade1 = 59;
  int grade2 = 90;

  if (grade1 > 60) {
    printf("Pass\n");
  } else {
    printf("Fail\n");
  }

  if (grade2 > 60) {
    printf("Pass\n");
  } else {
    printf("Fail\n");
  }

}

int elseIf() {
 
  double ph = 7;

  // Start the if, else if, else here:
  if (ph > 7) {
    printf("Basic\n");
  } else if (ph < 7) {
    printf("Acidic\n");
  } else {
    printf("Neutral");
  }
}

int switchStatement() {

  int number = 7;

  switch(number) {
    case 1:
      printf("Bulbasaur\n");
      break;
    case 2:
      printf("Ivysaur\n");
      break;
    case 3:
      printf("Venusaur\n");
      break;
    case 4:
      printf("Charmander\n");
      break;
    case 5:
      printf("Charmeleon\n");
      break;
    case 6:
      printf("Charizard\n");
      break;
    case 7:
      printf("Squirtle\n");
      break;
    case 8:
      printf("Wartortle\n");
      break;
    case 9:
      printf("Blastoise\n");
      break;
    default:
      printf("Unknown\n");
      break;
  }
}

int space() {

  double weight;
  int x;

  printf("Please enter your current earth weight: ");
  scanf("%lf", &weight);

  printf("\nI have information for the following planets:\n\n");
  printf("\t1. Mercury\t2. Venus\t3. Mars\t4. Jupiter\n");
  printf("\t5. Saturn\t6. Uranus\t7. Neptune\n\n");
 
  printf("Which planet are you visiting? ");
  scanf("%d", &x);

  switch (x) {
    case 1:
    weight = weight * 0.38;
    break;
    case 2:
    weight = weight * 0.91;
    break;
    case 3:
    weight = weight * 0.38;
    break;
    case 4:
    weight = weight * 2.34;
    break;
    case 5:
    weight = weight * 1.06;
    break;
    case 6:
    weight = weight * 0.92;
    break;
    case 7:
    weight = weight * 1.19;
    break;
  }
  printf("\nYour weight: %lf\n", weight);

int printingTheYear(void) {
  int month, day, year;

  // Standard date form
  printf("Enter date (mm/dd/yyyy): ");
  // Split the user input into 3 variables for the date
  // Don't worry about the `scanf()` below, you'll learn more about these later!
  scanf("%d /%d /%d", &month, &day, &year);

  // Print the month

  switch (month) {
    case 1:
    printf("January");
    break;
    case 2:
    printf("February");
    break;
    case 3:
    printf("March");
    break;
    case 4:
    printf("April");
    break;
    case 5:
    printf("May");
    break;
    case 6:
    printf("June");
    break;
    case 7:
    printf("July");
    break;
    case 8:
    printf("August");
    break;
    case 9:
    printf("September");
    break;
    case 10:
    printf("October");
    break;
    case 11:
    printf("November");
    break;
    case 12:
    printf("December");
    break;
  }
  
  // Print the day
  // Print the suffix for a given day
  switch (day) {
    case 1: case 21: case 31:
        printf(" %dst", day);
        break;
    case 2: case 22:
        printf(" %dnd", day);
        break;
    case 3: case 23:
        printf(" %drd", day);
        break;
    default:
        printf(" %dth", day);
        break;
}

  // Print the year
  printf(" %d", year);
  
  return 0;
}
