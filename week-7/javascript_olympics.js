 // JavaScript Olympics

// I paired with Sean Massih on this challenge.

// This challenge took me 1 hour.


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

// 2,4,6,8

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


// "We built this city"

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
// What JavaScript knowledge did you solidify in this challenge?
//  The ability of a function to create additional properties of an object. It hadn't occurred to me that we could iterate through an array of objects, adding properties like that. There's also a solution we wound up not using where we tried to .pop the odd values off of the array of even numbers and return the remaining array, but we learned you can't pop a value by the index -- .pop only removes the last value in the array, so each successive call shortens it from the ned.
// What are constructor functions?
//  Constructor functions have slightly different syntax than object literals. They function very much like classes in Ruby in that constructor functions let you build multiple instances (objects), each with their own separate property values and methods. Additionally, once an instance is constructed with the constructor, an individual instance's properties can be changed without affecting all other instances of the same object.
// How are constructors different from Ruby classes (in your research)?
//  One of the most obvious differences between Javascript constructors and Ruby classes is the use of the keyword this. Using .this is sort of similar to the @ sign on instance variables, but .this is specifying this specific object's given "name" property value (for example). They also aren't technically classes, in that they don't have class-specific methods the way Ruby does, the constructor objects are still just objects.