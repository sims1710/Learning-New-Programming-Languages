///////////////////////////////class vs className///////////////////////////////
/*
In JSX, you can’t use the word class like in HTML! You have to use className 
instead:
*/
<h1 className="big">Title</h1>

////////////////////////////////Self-Closing Tags////////////////////////////////

/*
Most HTML elements use two tags: an opening tag (<div>), and a closing tag 
(</div>). However, some HTML elements such as <img> and <input> use only one tag. 
The tag that belongs to a single-tag element isn’t an opening tag or a closing tag; 
it’s a self-closing tag.  In JSX, you have to include the slash. If you write a 
self-closing tag in JSX and forget the slash, you will raise an error:
*/

