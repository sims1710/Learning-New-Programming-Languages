#include <stdio.h>

int intro() {
  
  // Variables set for you, do not change here
  int booksSold = 100;
  double bookCost = 9.99;
  double totalSalesValue;

  // Make your changes here
  booksSold = booksSold + 200;
  totalSalesValue = bookCost * booksSold;
  totalSalesValue = totalSalesValue/2;
  
  // Output logic, no need to change this
  printf("You sold %d books and your take home was $%.2f\n", booksSold, totalSalesValue);
}

int modulo() {
  
  int endingDayOfWeek = 0;
  int daysThatPass = 5;
  int daysInWeek = 7;

  endingDayOfWeek = daysThatPass % daysInWeek;

  printf("You started on the 1st (0) day of the week, went %d days from this, so it is now the %d day of the week\n", daysThatPass, endingDayOfWeek);
}

int incrementAndDecrement() {
  int n = 13;
  int m = 10;

  m--;
  n++;
  
  printf("m = %d\n", m);
  printf("n = %d\n", n);
}

int assignment() {
  
  int timesServerCrashed = 5;
  double losses = 500.95;

  losses *= timesServerCrashed;
  losses /= 2;

  printf("Total Losses: $%.2f\n", losses);
}

int comparison() {
  
  int x = 5;
  int y = 42;

  if (x <= y) {
   printf("Congratulations on setting up a comparison correctly!");
  }

int logicalOperators() {
  
  int a = 2;
  int b = 3;
  
  if (a == b && a == 2) {
    printf("both are true\n");
  }
  if (a == b || a == 2) {
    printf("one or both are true\n");
  }
  if (!(a == b)) {
    printf("they are not equal\n");
  }
}
