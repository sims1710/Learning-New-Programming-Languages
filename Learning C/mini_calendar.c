#include <stdio.h>
#include <stdbool.h>
bool is_leap_year(int);
void add_days_to_date(int*, int*, int*, int);

bool is_leap_year(int year){
  if (year % 4 != 0){
    return false;
  } else if (year % 100 != 0){
    return true;
  } else if (year % 400 != 0){
    return false;
  } else{
    return true;
  }
}

int days_in_month[13] = {0, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};

void add_days_to_date(int* dd, int* mm, int* yy, int days_left_to_add){
  int days_left_in_month;
  while (days_left_to_add > 0){
    days_left_in_month = days_in_month[*mm] - *dd;
    if (*mm == 2 && is_leap_year(*yy)){
      days_left_in_month++;
    }
    if (days_left_to_add > days_left_in_month) {
      days_left_to_add -= days_left_in_month;
      days_left_to_add--; // enter 1st day of next month
      *dd =1;
      if (*mm == 12){
        *mm = 1;
        (*yy)++; // new year
      } else {
        (*mm)++;
      }
    } else {
      *dd += days_left_to_add;
      days_left_to_add = 0;
    }
  }
}

int main() {
  // int year;
  // printf("Please input a year between 1800 and 10000:");
  // scanf("%d", &year);

  // if (is_leap_year(year)){
    // printf("Leap Year");
  // } else{
    // printf("Not Leap Year");
  // }
  int mm, dd, yy, days_left_to_add;
  printf("Please enter a date between the years 1800 and 10000 in the format mm dd yy and provide the number of days to add to this date:");
  scanf("%d%d%d%d", &mm, &dd, &yy, &days_left_to_add);
  add_days_to_date(&dd, &mm, &yy, days_left_to_add);
  printf("%d/%d/%d", mm, dd, yy);
}
