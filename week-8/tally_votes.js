// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with Calvin Lang.
// This challenge took me 2.5 hours.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// FOR loop through votes
//   FOR loop through each officer role
//     IF that person exists in the voteCount object
//       Add 1 to that person's property
//     ELSE add that person as a new property with a value of 1
// Sort the votecounts object by the value
// Assign the first property in each of the officer properties to the officers object under the correct value

// __________________________________________
// Initial Solution


// function voteCall(){
//   for (var vote in votes){
//     for (var people in votes[vote]){
//       if ( voteCount[people].hasOwnProperty(votes[vote][people]) ) {
//         var newPerson = votes[vote][people];
//         voteCount[people][newPerson] += 1;
//       } else {
//         var newPerson = votes[vote][people];
//         voteCount[people][newPerson] = 1;
//       }
//     }
//   }
//   for (var position in voteCount) {
//     var votesCounted = Object.keys(voteCount[position]).sort(function(a,b){return voteCount[position][b]-voteCount[position][a]});
//     officers[position] = votesCounted[0];
//   }
// }

// voteCall();

// __________________________________________
// Refactored Solution

function voteCall(){
  for (var vote in votes){
    for (var people in votes[vote]){
      if ( voteCount[people].hasOwnProperty(votes[vote][people]) ) {
        voteCount[people][votes[vote][people]] += 1;
      } else {
        voteCount[people][votes[vote][people]] = 1;
      }
    }
  }
  for (var position in voteCount) {
    var votesCounted = Object.keys(voteCount[position]).sort(function(a,b){return voteCount[position][b]-voteCount[position][a]});
    officers[position] = votesCounted[0];
  }
}

voteCall();


// __________________________________________
// Reflection

// What did you learn about iterating over nested objects in JavaScript?
//  This challenge really drove home the fact that you can use bracket notation inside of other bracket notation. My pair and I really struggled to get the right property to pull out of the voteCount object in order to create it or add to it. Originally we got it working by creating a separate temporary variable, but it turns out we could just add this value inside an existing set of brackets.
// Were you able to find useful methods to help you with this?
//  We used .hasOwnProperty in order to return a Boolean value if the named property existed in the object. That name for a method isn't necessarily intuitive, but that's what it does. We also had to create a sort function that would return the property with the largest value. We also used Object.keys, which returns an array of the object's properties. Our sort function then sorts this array.
// What concepts were solidified in the process of working through this challenge?
//  The use of for..in loops really came together for me in this challenge. Originally we kept trying to use a for loop with a .length called on the object, but this doesn't work. Also the iteration variable that you use for a for..in loop will store the property name from the object, which means you have a way to interact with both the properties and their values as you proceed.




// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)




