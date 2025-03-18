// 1D Array
let names: string[] = ['Danny', 'Samantha'];
let names: Array<string> = ['Danny', 'Samantha'];

// Arrays:
let bestNumbers: number[] = [7,77,4];
let bestLunches: string[] = ['chicken soup', 'non-chicken soup'];
let bestBreakfasts: string[] = ['scrambled eggs', 'oatmeal', 'tamago kake gohan', 'any kind of soup'];
let bestBooleans: boolean[] = [true, false];

// Multi-Dimensional Arrays
let arr: string[][] = [['str1', 'str2'], ['more', 'strings']];

let bestMealPlan: string[][] = [bestLunches, bestBreakfasts, ['baked potato', 'mashed potato']];
let bestBooleansTwice: boolean[][] = [bestBooleans, bestBooleans];
let numbersMulti: number[][][] = [ [[1],[2,3]], [[7],bestNumbers] ];

// Tuples - an array is typed with elements of specific types
let ourTuple: [string, number, string, boolean] = ['Is', 7 , 'our favorite number?' , false]; 

let numbersTuple: [number, number, number] = [1,2,3,4]; // Type Error! numbersTuple should only have three elements.
let mixedTuple: [number, string, boolean] = ['hi', 3, true] // Type Error! The first elements should be a number, the second a string, and the third a boolean. 

// We can’t assign an array to a tuple variable!
let tup: [string, string] = ['hi', 'bye'];
let arr: string[] = ['there','there'];
tup = ['there', 'there']; // No Errors.
tup = arr; // Type Error! An array cannot be assigned to a tuple.

// Arrays can be expanded
let examAnswers= [true, false, false];
examAnswers[3] = true; // No type error.

// But not tuples!
let tupleOfExamAnswers: [boolean, boolean, boolean] = [true, false, false];
tupleOfExamAnswers[3] = true; // Type error! The tuple only has 3 elements.

let tup: [number, number, number] = [1,2,3];
let concatResult = tup.concat([4,5,6]); // concatResult has the value [1,2,3,4,5,6].
// In the code above, TypeScript infers the variable concatResult as an array of numbers, not a tuple.

// REST PARAMETERS

// Assigning types to rest parameters is similar to assigning types to arrays. Here’s a rest parameter example without types:

function smush(firstString, ...otherStrings){ // it is not type safe
  let output = firstString;
  for(let i = 0; i < otherStrings.length; i++){
    output = output.concat(otherStrings[i]);
  }
  return output;
}

smush('a','h','h','H','H','H','!','!'); // Returns: 'ahhHHH!!'.

// correct way:

function addPower(p: number, ...numsToAdd: number[]): number[]{
  let answer = 0; 
  for(let i = 0; i < numsToAdd.length; i++){
    answer += numsToAdd[i] ** p;
  }
  return answer;
}

// SPREAD SYNTAX
function performDanceMove(moveName:string, moveReps:number, hasFlair:boolean):void{
  console.log(`I do the ${moveName} ${moveReps} times !`);
  if(hasFlair){
    console.log('I do it with flair!');
  }
}

let danceMoves: [string, number, boolean][] = [
  ['chicken beak', 4, false],
  ['wing flap', 4, false],
  ['tail feather shake', 4, false],
  ['clap', 4, false],
  ['chicken beak', 4, true],
  ['wing flap', 4, true],
  ['tail feather shake', 4, true],
  ['clap', 4, true],
];

danceMoves.forEach(move => performDanceMove(...move));
