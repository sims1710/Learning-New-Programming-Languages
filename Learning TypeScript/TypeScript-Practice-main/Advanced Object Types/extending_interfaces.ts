// Extending Interfaces
interface Shape {
  color: string;
}

interface Square extends Shape {
  sideLength: number;
}

const mySquare: Square = { sideLength: 10, color: 'blue' };

// 2ND EXAMPLE
interface Human {
  name: string;
  hobbies: string[];
}

interface Developer extends Human{
  code: () => void;
}

const me: Developer = { 
  code: () => console.log('Headphones on. Coffee brewed. Editor open.'),
  name: 'Corrina', 
  hobbies: ['Building rockets']
}

me.code();
