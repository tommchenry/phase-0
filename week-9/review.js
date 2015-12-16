// Pseudocode
// Input: an integer
// Output: a string representing the integer in English


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
  100: "hundred"
};

function in_words(num){
  // console.log(num);
  console.log(WORDS[num]);
}


in_words(4);
in_words(27);
in_words(92);
in_words(112);
in_words(347);
in_words(999);