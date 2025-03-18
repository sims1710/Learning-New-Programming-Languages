#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Structures section
struct Race{
  int numberOfLaps;
  int currentLap;
  char* firstPlaceDriverName;
  char* firstPlaceRaceCarColor;
};

struct RaceCar{
  char* driverName;
  char* raceCarColor;
  int totalLapTime;
};

// Print functions section
void printIntro(){
  printf("Welcome to our main event digital race fans!\nI hope everybody has their snacks because we are about to begin!\n");
}

void printCountDown(){
  printf("Racers Ready! In...\n5\n4\n3\n2\n1\nRace!\n");
}

void printFirstPlaceAfterLap(struct Race race){
  printf("After lap number %d\nFirst Place Is: %s in the %s race car!\n", race.currentLap, race.firstPlaceDriverName, race.firstPlaceRaceCarColor);
}

void printCongratulation(struct Race race){
  printf("Let's all congratulate %s in the %s race car for an amazing performance.\nIt truly was a great race and everybody have a goodnight!\n", race.firstPlaceDriverName, race.firstPlaceRaceCarColor);
}

// Logic functions section
int calculateTimeToCompleteLap(){
  int speed = (rand() % 3) + 1;
  int acceleration = (rand() % 3) + 1;
  int nerves = (rand() % 3) + 1;

  return speed + acceleration + nerves;
}

void updateRaceCar(struct RaceCar* raceCarPointer){
  raceCarPointer->totalLapTime += calculateTimeToCompleteLap();
}

void updateFirstPlace(struct Race* racePointer, struct RaceCar* raceCar1, struct RaceCar* raceCar2){

  if ((*raceCar1).totalLapTime > (*raceCar2).totalLapTime){
    (*racePointer).firstPlaceDriverName = (*raceCar1).driverName;
  (*racePointer).firstPlaceRaceCarColor = (*raceCar1).raceCarColor;
  } else {
    (*racePointer).firstPlaceDriverName = (*raceCar2).driverName;
  (*racePointer).firstPlaceRaceCarColor = (*raceCar2).raceCarColor;
  }
}

void startRace(struct RaceCar* raceCar1, struct RaceCar* raceCar2){
  struct Race race = {5, 1, "", ""};
  for(int i = race.currentLap; i <= race.numberOfLaps; i++){
    updateRaceCar(raceCar1);
    updateRaceCar(raceCar2);
    updateFirstPlace(&race, raceCar1, raceCar2);
    printFirstPlaceAfterLap(race);
    race.currentLap++;
  }
  printCongratulation(race);
}

int main() {
	srand(time(0));
  struct RaceCar raceCar1 = {"Sim", "Black", 0};
  struct RaceCar raceCar2 = {"Riti", "Blue", 0};
  printIntro();
  printCountDown();
  startRace(&raceCar1, &raceCar2);
};
