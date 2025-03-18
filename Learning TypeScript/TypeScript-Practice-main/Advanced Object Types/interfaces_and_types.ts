// Interfaces and Types
type Mail = {
  postagePrice: number;
  address: string;
}

const catalog: Mail = ...

interface Mail {
  postagePrice: number;
  address: string;
}

const catalog: Mail = ...

/*
The biggest difference between interface and type is that interface can only be used to 
type objects, while type can be used to type objects, primitives, and more. As it turns 
out, type is more versatile and functional than interface. 

Since interface may only type objects, it’s a perfect match for writing object-oriented 
programs because these programs need many typed objects.
*/ 

interface Run {
  miles: number;
}

function updateRunGoal(run: Run) {
  console.log(`
Miles left:       ${50 - run.miles}
Percent of goal:  ${(run.miles / 50) * 100}% complete
  `)
}

updateRunGoal({
  miles: 5,
})
