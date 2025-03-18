// Type Guard
function formatDate(date: string | number) {
  // date can be a number or string here

  if (typeof date === 'string') { 
    // date must be a string type
  }
}

// Using in with Type Guards
type Tennis = {
  serve: () => void;
}

type Soccer = {
  kick: () => void;
}

function play(sport: Tennis | Soccer) {
  if ('serve' in sport) {
    return sport.serve();
  }

  if ('kick' in sport) {
    return sport.kick();
  }
}

// Another one
type Cat = {
  name: string;
  run: () => string;
}

type Fish = {
  name: string;
  swim: () => string;
}

const siameseCat = { 
  name: 'Proxie', 
  run: () => 'pitter pat'
}

const bettaFish = { 
  name: 'Neptune', 
  swim: () => 'bubble blub'
}

function move(pet: Cat | Fish) {
  if ('run' in pet){
    return pet.run();
  }
  if ('swim' in pet){
    return pet.swim();
  }
}

console.log(move(siameseCat));

// Narrowing with else
function formatPadding(padding: string | number) {
  if (typeof padding === 'string') {
    return padding.toLowerCase();
  } else {
    return `${padding}px`;
  }
}

type Pasta = {
  menuName: string;
  boil: () => string;
}

type Meat = {
  menuName: string;
  panFry: () => string;
}

const fettuccine = {
  menuName: 'Fettuccine',
  boil: () => 'Heat water to 212 degrees',
}

const steak = {
  menuName: 'New York Strip Steak',
  panFry: () => 'Heat oil to 350 degrees',
}

function prepareEntree(entree: Pasta | Meat) {
  if ('boil' in entree) {
    return entree.boil();
  } else {
    return entree.panFry();
  }
}

console.log(prepareEntree(fettuccine));

// Narrowing After a Type Guard
type Tea = {
  steep: () => string;
}

type Coffee = {
  pourOver: () => string;
} 

function brew(beverage: Coffee | Tea) {
  if ('steep' in beverage) {
    return beverage.steep();
  }

  return beverage.pourOver();
}

type Metal = {
  magnetize: () => string;
}

type Glass = {
  melt: () => string;
}

const iron = {
  magnetize: () => 'Electromagnet activated'
}

const bottle = {
  melt: () => 'Furnace set to 2,700 degrees'
}

function recycle(trash: Metal | Glass) {
  // Add your code below:
  if ('magnetize' in trash) {
    return trash.magnetize();
  }
  return trash.melt();
}

console.log(recycle(iron));
