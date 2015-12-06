
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
//   We approached the problem somewhat differently than my Ruby solution. Without a lot of Ruby's clever methods, we had to think in more basic terms like a for loop and a push. Using these we basically built the final number one item at a time.

// What did you learn about iterating over arrays in JavaScript?
//  Just like with Ruby, we learned that it's important to not iterate over an array that you're simultaneously changing or you'll get unpredictable results. Because of this we created the digits_copy array and built our final number there instead of trying to add the commas directly to the original digits array.

// What was different about solving this problem in JavaScript?
//   The basic principles of solving the problem remained the same, we just had fewer methods to work with. In some ways this made the solving move a little easier because it had to hew closer to the pseudocode.

// What built-in methods did you find to incorporate in your refactored solution?
//   We used both .split and .join to create the array from the string and then later to build a string from the array. The .split method expects an argument to tell it where to split the string, so we passed it two quotes in order to spit it at every term. Similarly, .join expects an argument telling it what separator to expect. If you don't pass it one, it will leave in the commas between terms of the array, but passing it an empty set of quotes will remove the array's commas.