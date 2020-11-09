"Hello Le Wagon"            // string on JS && Ruby

42                          // number on JS, integer on Ruby
3.14                        // number on JS, float on Ruby

true                        // boolean on JS, TrueClass on Ruby

typeof("Boris");            // on ruby you would do "Boris".class
// => 'string'

typeof(42);
// => 'number'

// For printing
console.log("Some message") // on ruby you would puts "Some message"

Number.parseInt('42', 10); // The second argument is optional, on ruby you would do '42'.to_i
// => 42

(42).toString();           // The parenthesis around 42 IS NOT optional, on ruby you would do 42.to_s
// => '42'

let firstName = "Tomas"    // lower camel case for declaring variables!

firstName[0]               // "T"
firstName.toUpperCase()    // "TOMAS"
firstName.toLowerCase()    // "tomas"
firstName.substring(1)     // "omas"


[ 'Hello', 'Le', 'Wagon', 42 ]    // Array

{ name: 'bob', age: 42 }          // Object
{ 'name': 'bob', 'age': 42 }      // Object (the exact same)

// When creating a variable that you're gonna re-assign new values later,
// use let.
let counter = 1;
counter = counter + 1;

// When creating a variable you WON'T re-assign new values later,
// use const. If you try to re-assign, JS will raise an error.
const firstName = "John";

firstName = "Paul"; // TypeError: Assignment to constant variable.

// Arrays are great to be declared as constants! As we usually don't
// overwrite them, just push new elements and delete some elements
// from it.
const fruits = [];
fruits.push("Apple"); // Create
fruits[0];            // Read
fruits[0] = "Banana"; // Update
fruits.splice(0, 1);  // Delete (1 item at index 0)

// Syntax for looping over an array.. Weird, yes, but kind of sexy.
fruits.forEach((element) => {
  console.log(element);
})

let age = 14;

// Syntax for if and else
if (age >= 18) {
  console.log('You can vote');
} else {
  console.log("You can't vote");
}

let digit = 2;

// Syntax for if and the former elsif (in JS, it's else if)
if (digit == 0) {
  console.log("Zero");
} else if (digit == 1) {
  console.log("One");
} else {
  console.log("Whatever");
}

// Value comparison
'1' == 1
true

// Value & Type comparison
> '1' === 1
false

// lower camel case for declaring functions!!!!
// We need an EXPLICIT return inside our functions.
const square = (number) => {
  return number * number;
}

// The following syntax is only possible when your function is
// a one-line function. This is the only way to have an IMPLICIT return.
const square = number => number * number;

// To declare a function without any parameters, just follow the
// same syntax ;)
const noParamsFunction = () => {
  return "I have no params, oh my!";
}

noParamsFunction();
