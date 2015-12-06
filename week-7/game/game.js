 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: You are a dog who is pulling off a spaghetti heist. You must escape with as much pasta as possible before the pasta police can arrest you.
// Overall mission: To gather up spaghetti as quickly as possible while avoiding the police.
// Goals: Get spaghetti.
// Characters: Player, Pasta Police,
// Objects: Spaghetti plate,
// Functions: Player move, police move, pickup pasta, display level to screen

// Pseudocode
//  Create
//
//
//
//

// Initial Code



function createLevel(){
  var levelWidth = 8;
  var levelHeight = 8;
  var level = [];
  for (var row = 0; row < levelHeight; row ++){
    var temp_row = [];
    for (var square = 0; square < levelWidth; square++) {
      temp_row.push(0);
    }
    level.push(temp_row);
  }
  level[player.xPos][player.yPos] = "@";
  level[cop1.xPos][cop1.yPos] = "C";
  return level;
}

var player = {
  xPos: 2,
  yPos: 2,
};

function Spaghetti(xPos, yPos, pasta){
  this.xPos = xPos;
  this.yPos = yPos;
  this.pasta = pasta;
}

function Cop(xPos, yPos, speed){
  this.xPos = xPos;
  this.yPos = yPos;
  this.speed = speed;
}

function catchDog(cop){
  if (Math.abs(player.xPos - cop.xPos) == 1 || Math.abs(player.yPos - cop.yPos) == 1){
    console.log("Ya Busted!");
  }
}

function displayLevel(level){
  toDisplay = "";
  for (row= 0; row < level.length; row++){
    for (square = 0; square < level[row].length; square++){
      switch(level[row][square]) {
        case 0:
          toDisplay += ".";
          break;
        case "@":
          toDisplay += "@";
          break;
        case "C":
          toDisplay += "C";
          break;
      }
    }
    toDisplay += "\n";
  }
  catchDog(cop1);
  console.log(toDisplay);
}
// console.log(displayLevel(level));
var cop1 = new Cop(4,4,1);
level = createLevel();
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