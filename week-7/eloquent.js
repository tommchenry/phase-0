// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
// var test = 1
// test += 3
// console.log(test)


// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
// var favFood = prompt("What is your favorite food?");
// alert ("Hey! That's my favorite food, too!");


// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// for (var i = 1; i <=100; i++){
//   if (i % 3 == 0 && i % 5 == 0)
//     console.log ("FizzBuzz");
//   else if (i % 3 == 0)
//     console.log("Fizz");
//   else if (i % 5 == 0)
//     console.log("Buzz");
//   else
//   console.log(i);
// }


// Functions

// Complete the `minimum` exercise.

function min(a,b){
  if (a < b)
    return a;
  else
    return b;
}
console.log(min(20, 10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
  name: "Tom McHenry",
  age: 34,
  favFoods: ["french fries","pizza","donuts"],
  quirk: "I'm teaching myself Latin."
};

