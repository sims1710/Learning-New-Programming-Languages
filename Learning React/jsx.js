//////////////////////////////////Intro to JSX//////////////////////////////////

/*
JSX elements are treated as JavaScript expressions. They can go anywhere that 
JavaScript expressions can go. This means that a JSX element can be saved in 
a variable, passed to a function, stored in an object or array… you name it.
*/

// An example of a JSX element being saved in a variable:
const myArticle = <article></article>;
const navBar = <nav>I am a nav bar</nav>;

// An example of several JSX elements being stored in an object:
const myTeam = {
  center: <li>Benzo Walli</li>,
  powerForward: <li>Rasha Loa</li>,
  smallForward: <li>Tayshaun Dasmoto</li>,
  shootingGuard: <li>Colmar Cumberbatch</li>,
  pointGuard: <li>Femi Billon</li>
};

////////////////////////////////Attributes in JSX////////////////////////////////

/*
JSX elements can have attributes, just like how HTML elements can. A JSX 
attribute is written using HTML-like syntax: a name, followed by an equals 
sign, followed by a value.
*/

// Examples of some JSX elements with attributes:
const p1 = <p id='large'>foo</p>;
const p2 = <p id='small'>bar</p>;
<a href='http://www.example.com'>Welcome to the Web</a>;
const title = <h1 id='title'>Introduction to React.js: Part I</h1>; 
const panda = <img src='images/panda.jpg' alt='panda' width='500px' height='500px'>;

///////////////////////////////////NESTED JSX///////////////////////////////////

/*
You can nest JSX elements inside of other JSX elements, just like in HTML.
*/

// An example of a JSX <h1> element, nested inside of a JSX <a> element:
<a href="https://www.example.com"><h1>Click me!</h1></a>

<a href="https://www.example.com">
  <h1>
    Click me!
  </h1>
</a>

/*
If a JSX expression takes up more than one line, then you must wrap the multi-
line JSX expression in parentheses. 
*/
(
  <a href="https://www.example.com">
    <h1>
      Click me!
    </h1>
  </a>
)

/*
Nested JSX expressions can be saved as variables, passed to functions, etc., 
just like non-nested JSX expressions can!
*/
const myDiv = (
  <div>
    <h1>
      Hello world
    </h1>
  </div>);

 const theExample = (
   <a href="https://www.example.com">
     <h1>
       Click me!
     </h1>
   </a>
 );

///////////////////////////////JSX Outer Elements///////////////////////////////

/*
A JSX expression must have exactly one outermost element. In other words, this 
code will work:
*/
const paragraphs = (
  <div id="i-am-the-outermost-element">
    <p>I am a paragraph.</p>
    <p>I, too, am a paragraph.</p>
  </div>
);

/*
But this code will not work:
*/
const paragraphs = (
  <p>I am a paragraph.</p> 
  <p>I, too, am a paragraph.</p>
);

//////////////////////////////////Rendering JSX//////////////////////////////////

// Example:
import React from 'react';
import { createRoot } from 'react-dom/client';

const container = document.getElementById('app');
const root = createRoot(container);
root.render(<h1>Hello world</h1>);

/*
Before we get started it is essential to understand that React relies on two 
things to render: what content to render and where to place the content.

With that in mind, let’s look at the first line:
*/

const container = document.getElementById('app');

/*
This line:
- Uses the document object which represents our web page.
- Uses the getElementById() method of document to get the Element object 
representing the HTML element with the passed in id (app).
- Stores the element in container.
*/

const root = createRoot(container);

/*
We use createRoot() from the react-dom/client library, which creates a React 
root from container and stores it in root. root can be used to render a JSX 
expression. This is the “where to place the content” part of React rendering.
*/

root.render(<h1>Hello world</h1>);

/*
The above uses the render() method of root to render the content passed in as 
an argument. Here we pass an <h1> element, which displays Hello world. This is 
the “what content to render” part of React rendering.
*/

//////////////////////////Passing a Variable to render()//////////////////////////

/*
The render() method’s argument doesn’t need to be JSX, but it should evaluate to 
a JSX expression. The argument could also be a variable, so long as that variable 
evaluates to a JSX expression.

In this example, we save a JSX expression as a variable named toDoList. We then 
pass toDoList as the argument of render():
*/

const toDoList = (
  <ol>
    <li>Learn React</li>
    <li>Become a Developer</li>
  </ol>
);

const container = document.getElementById('app');
const root = createRoot(container);
root.render(toDoList);

/////////////////////////////////The Virtual DOM/////////////////////////////////

/*
One special thing about a React root’s render() method is that it only updates 
DOM elements that have changed. That means that if you render the exact same 
thing twice in a row, the second render will do nothing:
*/

const hello = <h1>Hello world</h1>;

// This will add "Hello world" to the screen:
root.render(hello, document.getElementById('app'));

// This won't do anything at all:
root.render(hello, document.getElementById('app'));
