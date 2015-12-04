 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission:
// Goals:
// Characters:
// Objects:
// Functions:

// Pseudocode
//
//
//
//
//

// Initial Code

var level = [
[0,0,0],
[0,0,0],
[0,0,0]
];

var player = {
  xPos: 0,
  yPos: 0,
};

function displayLevel(level){
  level[player.xPos][player.yPos] = "@";
  toDisplay = "";
  for (row= 0; row < level.length; row++){
    for (square = 0; square < level[row].length; square++){
      toDisplay += level[row][square];
    }
    toDisplay += "\n";
  }
  console.log(toDisplay);
}
// console.log(displayLevel(level));
displayLevel(level);


// Refactored Code






// Reflection
//
//
//
//
//
//
//
//