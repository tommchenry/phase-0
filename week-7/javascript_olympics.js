 // JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up

function howToWin(array) {
   for(var i=0;i<array.length;i++){
     array[i].win = array[i].name + " won the " + array[i].event + "!";
   }
  return array;
 }
var athlete = [];
athlete[0] = {name: "Sarah Hughes", event: "Ladies' Singles"};
athlete[1] = {name: "Testerino", event: "Mens' Singles"};
console.log(howToWin(athlete));

// Bulk Up

// Create a function that accepts a string as an argument and reverses it. Use the built-in JavaScript methods for strings and arrays to accomplish this. See the MDN String (Links to an external site.) and Array (Links to an external site.) docs. HINT: Think about how you would write this in Ruby and translate!

// Input: string
// Output: reversed string
// Convert string into an array
// Create empty array
// Pop element from array to new array
// Return new array as string

function reverse_string(string){
  var string_array = string.split("");
  var reverse_array = []
  for (var i = 0; i <= string_array.length; i++){
    reverse_array.push(string_array[string_array.length-i]);
  }
  return reverse_array.join("");
}


var test_string = "I'm a test!";
console.log(reverse_string(test_string));


// Jumble your words

// Create a function that accepts an array of numbers. Return an array with only the even numbers. You can do this manually or use built-in JavaScript Array Methods (Links to an external site.). Are you missing Ruby yet?

function even_numbers(array){
  var evens = []
  for(var i=0;i<=array.length;i++){
    if(array[i]%2==0){
      evens.push(array[i]);
    }
  }
  return evens;
}

var nums = [123,122,1,2,3,4,5,6,7];
console.log(even_numbers(nums));
// 2,4,6,8




// "We built this city"

// Driver test code has been provided for you below. Copy and paste it to your javascript_olympics.js file. Read the definition of a constructor function from this excellent (albeit old) article (Links to an external site.). This is a great article to return to when you have the time to learn more about constructor functions.


function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)
// Build the constructor function that will make this driver code work.




// Reflection