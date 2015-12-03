
// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: .

// Pseudocode
// Input: A big number
// Output: A big number with commas in the correct position
// Reverse the number.
// Take the number and break it into an array.
// Create a blank array
// WHILE there are numbers in the array
// Push the numbers from the first array to the blank array
// If the position is modulo 3 equals zero, push a comma
// Reverse the second array
// Flatten the array
// Return the array


// FOR every third vale

// for (i=0; i<number_as_array.length-1; i++)


// Initial Solution

//function separateComma(number){
//  var digits = number.toString().split('').reverse();
//  var digits_copy = [];
//  for (x = 0; x < digits.length; x++){
//    if (x % 3 == 0 && x > 0 ) {
//      digits_copy.push(",")
//      digits_copy.push(digits[x]);
//    }
//    else {
//      digits_copy.push(digits[x]);    }
//  }
//  return digits_copy.reverse().join("")
//}

// Refactored Solution

function separateComma(number){
  var digits = number.toString().split('').reverse();
  var digits_copy = [];

  for (x = 0; x < digits.length; x++) {
    if (x % 3 == 0 && x > 0 ) {
      digits_copy.push(",")
    }
    digits_copy.push(digits[x]);
  }
  return digits_copy.reverse().join("")
}


// Your Own Tests (OPTIONAL)
separateComma(1569743)
separateComma(1000)
separateComma(100000)
separateComma(1000000)
separateComma(10000000)
separateComma(10000000)


// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
//  We approached the problem somewhat differently
// What did you learn about iterating over arrays in JavaScript?
// What was different about solving this problem in JavaScript?
// What built-in methods did you find to incorporate in your refactored solution?