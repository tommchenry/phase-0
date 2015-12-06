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
// Build the constructor function that will make this driver code work.




// Reflection
// What JavaScript knowledge did you solidify in this challenge?
// What are constructor functions?
// How are constructors different from Ruby classes (in your research)?