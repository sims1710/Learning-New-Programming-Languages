// Defining Unions
let ID: string | number;

// number
ID = 1;

// or string
ID = '001';

console.log(`The ID is ${ID}.`);

function getMarginLeft(margin: string | number) {
  return { 'marginLeft': margin };
}

function printNumsAndStrings(statement: string | number) {
  console.log(`ℹ️ LOG:: ${statement}`);
}

printNumsAndStrings('hello!');
printNumsAndStrings(9);

// TypeNarrowing
// Type narrowing is when TypeScript can figure out what type a variable can be at a given point in our code.

// A type guard is a conditional that checks if a variable is a certain type, like this:

function getMarginLeft(margin: string | number) {
  // margin may be a string or number here
  
  if (typeof margin === 'string') {
    // margin must be a string here
  }
}

function formatValue(value: string | number) {
  // Write your code here
  if (typeof value === 'string') {
    console.log(value.toLowerCase());
  }
  if (typeof value === 'number') {
    console.log(value.toFixed(2));
  }
}

formatValue('Hiya');
formatValue(42);

// Inferred Union Return Types
type User = {
  id: number;
  username: string;
};

function createUser() {
  const randomChance = Math.random() >= 0.5;

  if (randomChance) {
    return { id: 1, username: 'nikko' };
  } else {
    return 'Could not create a user.';
  }
}

let userData: User | string = createUser();

// Unions and Arrays
const dateNumber = new Date().getTime(); // returns a number
const dateString = new Date().toString(); // returns a string

const timesList: (string | number)[] = [dateNumber, dateString];

function formatListings(listings: (string | number)[]) {
  return listings.map((listing) => {
    if (typeof listing === 'string') {
      return listing.toUpperCase();
    }

    if (typeof listing === 'number') {
      return `$${listing.toLocaleString()}`;
    }
  });
}

const result = formatListings([
  '123 Main St',
  226800,
  '580 Broadway Apt 4a',
  337900,
]);

console.log(result);

// Common Key Value Pairs
const batteryStatus: boolean | number = false;

batteryStatus.toString(); // No TypeScript error
batteryStatus.toFixed(2); // TypeScript error

/*
Since batteryStatus can be a boolean or a number, TypeScript will only 
allow us to call methods that both number and boolean share. They both 
share .toString(), so we’re good there. But, since only number has a 
.toFixed() method, TypeScript will complain if we try to call it.
*/

// Unions with Literal Types
type Color = 'green' | 'yellow' | 'red';

function changeLight(color: Color) {
  // ...
}

type Status = 'idle' | 'downloading' | 'complete';

function downloadStatus(status: Status) {
  if (status === 'idle') {
    console.log('Download');
  }

  if (status === 'downloading') {
    console.log('Downloading...');
  }

  if (status === 'complete') {
    console.log('Your download is complete!');
  }
}

downloadStatus('complete');



