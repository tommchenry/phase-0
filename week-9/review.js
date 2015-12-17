// Pseudocode
// Input: an integer
// Output: a string representing the integer in English
// Create a blank string
// Take in an integer and split it into three number long collection objects
// IF the number is smaller than three places, split it into a three-number collection object with zeroes for any missing digits
// FOR each three-number chunk
// Check the hundreds place against the words list and add it to the blank string with the word for hundreds
// Check the tens place against the words list and add it to the blank string
// Check the ones list against the words list and add it to the blank string
// Return the string

var WORDS = {
  1: "one",
  2: "two",
  3: "three",
  4: "four",
  5: "five",
  6: "six",
  7: "seven",
  8: "eight",
  9: "nine",
  10: "ten",
  11: "eleven",
  12: "twelve",
  13: "thirteen",
  14: "fourteen",
  15: "fifteen",
  16: "sixteen",
  17: "seventeen",
  18: "eighteen",
  19: "nineteen",
  20: "twenty",
  30: "thirty",
  40: "forty",
  50: "fifty",
  60: "sixty",
  70: "seventy",
  80: "eighty",
  90: "ninety",
};

// function in_words(num){
//   if (num.toString().length == 1){
//     return WORDS[num];
//   }
//   else if (num.toString().length == 2 && num <= 20){
//     return WORDS[num];
//   }
//   else {
//     var num_array = num.toString().split("");
//     if (num_array.length == 2){
//       return WORDS[num_array.shift() + "0"] + " " + in_words(num_array.join(""));
//     }
//     if (num_array.length == 3){
//       return WORDS[num_array.shift()] + " hundred " + in_words(num_array.join(""));
//     }
//     if (num_array.length == 4){
//       return WORDS[num_array.shift()] + " thousand " + in_words(num_array.join(""));
//     }
//   }
// }

// Refactored solution

function in_words(num){
  if (num.toString().length == 1){
    return WORDS[num];
  }
  else if (num.toString().length == 2 && num <= 20){
    return WORDS[num];
  }
  else {
    var special_words = [,,," hundred "," thousand "];
    var num_array = num.toString().split("");
    if (num_array.length == 2){
      return WORDS[num_array.shift() + "0"] + " " + in_words(num_array.join(""));
    }
    else{
      return WORDS[num_array.shift()] + special_words[num_array.length + 1] + in_words(num_array.join(""));
    }
  }
}

// Driver Code

console.log(in_words(4));
console.log(in_words(19));
console.log(in_words(27));
console.log(in_words(92));
console.log(in_words(112));
console.log(in_words(347));
console.log(in_words(999));
console.log(in_words(3342));

// Reflection
// - What concepts did you solidify in working on this challenge?

// - What was the most difficult part of this challenge?

// - Did you solve the problem in a new way this time?

// - Was your pseudocode different from the Ruby version? What was the same and what was different?