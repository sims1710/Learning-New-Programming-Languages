// Function Type

let myFavoriteFunction = console.log; // Note the lack of parentheses.
myFavoriteFunction('Hello World'); // Prints: Hello World

type StringsToNumberFunction = (arg0: string, arg1: string) => number;

/*
This syntax is just like arrow notation for functions, except instead of the return value 
we put the return type. In this case, the return type is number. Because this is just a 
type, we did not write the function body at all. A variable of type StringsToNumberFunction 
can be assigned any compatible function:
*/

let myFunc: StringsToNumberFunction;
myFunc = function(firstName: string, lastName: string) {
  return firstName.length + lastName.length;
};

myFunc = function(whatever: string, blah: string) {
  return whatever.length - blah.length;
};
// Neither of these assignments results in a type error.

// Math Operations
function add(a, b){return a+b }
function subtract(a, b){return a-b }
function multiply(a, b){return a*b}
function divide(a, b){return a/b}
function wrongAdd(a, b){return (a+b)+''}

// Add your function type below:
type OperatorFunction = (a: number, b:number)=> number;

// Math Tutor Function That Accepts a Callback
function mathTutor(operationCallback : OperatorFunction) {
  console.log("Let's learn how to", operationCallback.name,'!');
  let value25 = operationCallback(2,5);
  console.log('When we', operationCallback.name, '2 and 5, we get', value25, '.');
  console.log('When we', operationCallback.name, value25, 'and 7, we get', operationCallback(value25,7), '.');
  console.log('Now fill out this worksheet.');
}

// Call your functions below:
mathTutor(multiply);
mathTutor(wrongAdd);
