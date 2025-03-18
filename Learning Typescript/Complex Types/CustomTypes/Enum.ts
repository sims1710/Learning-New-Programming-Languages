// ENUMS
/*
We use enums when we’d like to enumerate all the possible values that a variable could have. 

A variable of the string type can have any string as a value; there are infinitely many possible strings, 
and it would be impossible to list them all. Similarly, a variable of the boolean[] type can have any 
array of booleans as its value; again, the possibilities are infinite.
*/

enum Direction {
  North,
  South,
  East,
  West
}

let whichWayToArcticOcean: Direction;
whichWayToArcticOcean = Direction.North; // No type error.
whichWayToArcticOcean = Direction.Southeast; // Type error: Southeast is not a valid value for the Direction enum.
whichWayToArcticOcean = West; // Wrong syntax, we must use Direction.West instead. 

/*
For example, if we set whichWayToArticOcean = Direction.North, then whichWayToArticOcean == 0 evaluates 
to true. Furthermore, we can reassign whichWayToArticOcean to a number value, like whichWayToArticOcean 
= 2, and it does not raise a type error. This is because Direction.North, Direction.South, Direction.East, 
and Direction.West are equal to 0, 1, 2, and 3, respectively.
*/

// We can change the starting number, writing something like

enum Direction {
  North = 7,
  South,
  East,
  West
}

// Here, Direction.North, Direction.South, Direction.East, and Direction.West are equal to 7, 8, 9, and 10, respectively.

// We can also specify all numbers separately, if needed:

enum Direction {
  North = 8,
  South = 2,
  East = 6,
  West = 4
}

let petOnSale = 'chinchilla';
let ordersArray = [
  ['rat', 2], 
  ['chinchilla', 1], 
  ['hamster', 2], 
  ['chinchilla', 50]
];

// Write your code below:
enum Pet {
  Hamster,
  Rat,
  Chinchilla,
  Tarantula
}

const petOnSaleTS : Pet = Pet.Chinchilla;
let ordersArrayTS : [Pet, number][] = [[Pet.Rat, 2], [Pet.Chinchilla, 1], [Pet.Hamster, 2], [Pet.Chinchilla, 50]];

// String Enums vs. Numeric Enums
// String Enums:

enum DirectionNumber { North, South, East, West }
enum DirectionString { North = 'NORTH', South = 'SOUTH', East = 'EAST', West = 'WEST' }


//  Use the convention shown here (North = 'NORTH'), where the string value of the enum variable is just the capitalized form of the variable name.
